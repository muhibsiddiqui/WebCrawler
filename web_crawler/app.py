import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
from flask_migrate import Migrate

app = Flask(__name__)

# Ensure Flask finds the config file
app.config.from_object("config.Config")

db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = "login"
migrate = Migrate(app, db)

from routes import *  # Import routes after initializing app

if __name__ == "__main__":
    app.run(debug=True)