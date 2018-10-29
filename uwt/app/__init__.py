#! -*- coding: utf8 -*-
from flask import Flask

from uwt.config import settings
from uwt.app.api import API

APP = Flask(__name__, template_folder=settings.APP_TEMPLATES_FOLDER)

APP.register_blueprint(API)

from uwt.app import urls

