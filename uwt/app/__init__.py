#! -*- coding: utf8 -*-
from flask import Flask, session

from uwt.config import settings
from uwt.app.api import API

APP = Flask(__name__, template_folder=settings.APP_TEMPLATES_FOLDER)

APP.register_blueprint(API)

APP.secret_key = settings.APP_SECRET_KEY

from uwt.app import urls
