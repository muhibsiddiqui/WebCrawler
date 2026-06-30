from app import db, login_manager,bcrypt
from flask_login import UserMixin
from flask_bcrypt import Bcrypt


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), unique=True, nullable=False)
    email = db.Column(db.String(255), unique=True, nullable=False)
    password_hash = db.Column(db.Text, nullable=False)
    role = db.Column(db.Enum('user', 'admin'), default='user')

    def set_password(self, password):
        self.password_hash = bcrypt.generate_password_hash(password).decode('utf-8')

    def check_password(self, password):
        return bcrypt.check_password_hash(self.password_hash, password)


class CrawledData(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(255))
    content = db.Column(db.Text)
    timestamp = db.Column(db.DateTime, default=db.func.current_timestamp())
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)
    num_words = db.Column(db.Integer, default=0)
    num_images = db.Column(db.Integer, default=0)
    image_urls = db.Column(db.Text)
    is_initial = db.Column(db.Boolean, default=False)
    internal_links = db.relationship('InternalLink', backref='crawled_data', lazy='joined')


class InternalLink(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    url = db.Column(db.String(500), nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)
    title = db.Column(db.String(300), nullable=True)
    crawled_data_id = db.Column(db.Integer, db.ForeignKey("crawled_data.id"), nullable=False)
    user = db.relationship("User", backref="internal_links")
    parent_crawl = db.relationship("CrawledData", backref="internal_links")