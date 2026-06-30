from flask import render_template, redirect, url_for, flash, request
from app import app, db, bcrypt
from flask_login import login_user, logout_user, login_required, current_user
from models import User, CrawledData, InternalLink
from forms import RegisterForm, LoginForm
import requests
from bs4 import BeautifulSoup
from urllib.parse import urlparse, urljoin
from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings
import threading
import re
import scrapy

    # ========== Scrapy Spider Class ==========


class InternalLinkSpider(scrapy.Spider):
        name = "internal_spider"

        def __init__(self, urls, db_records, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.start_urls = urls
            self.db_records = {record.url: record for record in db_records}

        def parse(self, response):
            title = response.xpath('//title/text()').get(default='No Title').strip()
            link_record = self.db_records.get(response.url)
            if link_record:
                link_record.title = title
                db.session.commit()
                self.logger.info(f"Updated {response.url} with title: {title}")




@app.route("/register", methods=["GET", "POST"])
def register():
        if current_user.is_authenticated:
            return redirect(url_for("dashboard"))

        form = RegisterForm()
        if form.validate_on_submit():
            hashed_password = bcrypt.generate_password_hash(form.password.data).decode("utf-8")
            user = User(username=form.username.data, email=form.email.data, password_hash=hashed_password)
            db.session.add(user)
            db.session.commit()
            flash("Account created successfully! You can now log in.", "success")
            return redirect(url_for("login"))

        return render_template("register.html", form=form)

@app.route("/login", methods=["GET", "POST"])
def login():
        if current_user.is_authenticated:
            return redirect(url_for("dashboard"))

        form = LoginForm()
        if form.validate_on_submit():
            user = User.query.filter_by(email=form.email.data).first()
            if user and user.check_password(form.password.data):
                login_user(user)
                flash("Logged in successfully!", "success")
                return redirect(url_for("dashboard"))
            else:
                flash("Invalid email or password!", "danger")

        return render_template("login.html", form=form)

@app.route("/logout")
@login_required
def logout():
        logout_user()
        flash("You have been logged out.", "info")
        return redirect(url_for("login"))

@app.route("/dashboard")
@login_required
def dashboard():
        # Fetch the crawled data explicitly
        crawled_data = CrawledData.query.filter_by(user_id=current_user.id, is_initial=True).all()
        
        return render_template("dashboard.html", user=current_user, crawled_data=crawled_data)



def get_domain(url):
        return urlparse(url).netloc


def crawl_page(url):
        try:
            response = requests.get(url)
            soup = BeautifulSoup(response.text, "html.parser")

            title = soup.title.string if soup.title else "No Title"
            content = soup.get_text()
            images = soup.find_all("img")
            num_images = len(images)
            num_words = len(content.split())
            image_urls = [img.get("src") for img in images]

            #DATA CLEANING
            # ========== (6) Normalize Whitespace ==========
        
            content = re.sub(r'\s+', ' ', content).strip()

            # ========== (15) Filter Low-Quality Pages ==========
            num_words = len(content.split())
            if num_words < 100:
                print(f"Skipped low-quality page: {url}")
                return None
            # ========== (6) Fix Character Encoding Issues ==========
            content = content.encode('utf-8', errors='ignore').decode()
            # ========== (1) Remove Scripts, Styles, Comments ==========
            for script in soup(["script", "style"]):
                script.decompose()
            for comment in soup.find_all(string=lambda text: isinstance(text, comment)):
                comment.extract()




            # Save the initial page
            initial_data = CrawledData(
                url=url,
                title=title,
                content=content,
                num_images=num_images,
                num_words=num_words,
                image_urls=",".join(image_urls),
                user_id=current_user.id,
                is_initial=True
            )
            db.session.add(initial_data)
            db.session.commit()  # Commit here to get `initial_data.id` for FK

            domain = get_domain(url)
            internal_links = []

            for anchor in soup.find_all("a", href=True):
                link = urljoin(url, anchor["href"])
                if get_domain(link) == domain:
                    internal_link = InternalLink(
                        url=link,
                        user_id=current_user.id,
                        crawled_data_id=initial_data.id
                    )
                    db.session.add(internal_link)
                    internal_links.append(internal_link)

            db.session.commit()

            #Run Scrapy in thread to fetch titles of internal links
            def run_scrapy():
                process = CrawlerProcess(get_project_settings())
                process.crawl(InternalLinkSpider, urls=[l.url for l in internal_links], db_records=internal_links)
                process.start()

            threading.Thread(target=run_scrapy).start()

            return initial_data

        except Exception as e:
            print(f"Error crawling {url}: {str(e)}")
            return None

@app.route("/crawl", methods=["GET", "POST"])
@login_required
def crawl():
        if request.method == "POST":
            url = request.form.get("url")
            keyword = request.form.get("keyword")
            # depth = int(request.form.get())

            if not url and not keyword:
                flash("Please enter a URL or keyword.", "warning")
                return redirect(url_for("crawl"))

            if url:
                crawl_page(url)  # Start the recursive crawl
                flash("Data crawled successfully!", "success")
                return redirect(url_for("dashboard"))

            return redirect(url_for("dashboard"))

        return render_template("crawl.html")

@app.route("/delete/<int:data_id>", methods=["POST"])
@login_required
def delete_entry(data_id):
        data = CrawledData.query.get_or_404(data_id)
        if data.user_id != current_user.id:
            flash("Unauthorized deletion attempt.", "danger")
            return redirect(url_for("dashboard"))

        InternalLink.query.filter_by(crawled_data_id=data.id).delete()
        db.session.delete(data)
        db.session.commit()

        flash("Crawled data deleted successfully.", "success")
        return redirect(url_for("dashboard"))



@app.route("/admin")
@login_required
def admin():
        if current_user.email != "admin@example.com":  # Set your admin email
            flash("Access denied!", "danger")
            return redirect(url_for("dashboard"))

        users = User.query.all()
        return render_template("admin.html", users=users)

@app.route("/")
def home():
        if current_user.is_authenticated:
            return redirect(url_for("dashboard"))
        return render_template("home.html")