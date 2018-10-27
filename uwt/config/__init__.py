# -*- coding: utf-8 -*-
import importlib

from uwt import ENVIRONMENT

try:
    settings = importlib.import_module('.%s' % ENVIRONMENT, 'uwt.config')
except ImportError as e:
    raise RuntimeError('Unable to import config module {}'.format(ENVIRONMENT))

# TODO: update globals() with var in configmodule

