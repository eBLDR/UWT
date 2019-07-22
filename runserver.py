#!/venv/bin/python
# -*- coding: utf8 -*-

from uwt.config import settings
from uwt.app import APP

if __name__ == '__main__':
    APP.run(host=settings.APP_HOST, port=settings.APP_PORT)
