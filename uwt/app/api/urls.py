from flask import request, url_for

from uwt.app.api import API
from uwt.helpers import utils
from uwt.persistence import persistence


# CHECKS
@API.route('/', methods=['GET'])
def _():
    return 'OK'


@API.route('/echo', methods=['GET', 'POST', 'PUT', 'DELETE'])
def echo():
    data = {
	'status_code': 200,
        'method': request.method
        }
    return utils.to_json(data)


# ERROR HANDLERS
@API.errorhandler(404)
def not_found(error=None):
    return '{} - 404 - Not found'.format(request.url)


# API ENDPOINTS
@API.route('/elements', methods=['GET'])
@API.route('/elements/<sphere>', methods=['GET'])
def elements(sphere=None):
    buff = persistence.get_elements(sphere=sphere)
    return utils.to_json(buff)


@API.route('/disciplines', methods=['GET'])
def elements():
    buff = persistence.get_disciplines()
    return utils.to_json(buff)


@API.route('/exercises/<discipline>', methods=['GET'])
def exercises_discipline(discipline):
    # TODO: check valid uri to avoid db error when querying
    # if discipline not in persistence.get_disciplines():
        # return not_found()
    buff = persistence.get_exercises_discipline(discipline, filters=request.args)
    return utils.to_json(buff)
