#! -*- coding: utf8 -*-
from flask import Flask

APP = Flask(__name__, template_folder='templates')

from uwt.app import urls
