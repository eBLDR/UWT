#! -*- coding: utf8 -*-
from flask import Blueprint

from uwt.config import settings

API = Blueprint('api', __name__, url_prefix=settings.APP_API_URL_PREFIX)

from uwt.app.api import urls

