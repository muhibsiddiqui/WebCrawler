import os

class Config:
    SECRET_KEY = 'your_secret_key'  
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:@localhost/web_crawler'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
