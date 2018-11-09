from functools import wraps

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
    return '{} - 404 - Not found\nERROR: {}'.format(request.url, error)


# RESPONSE MANAGER
def response_manager(f):
    """
    Manages API response.
    :param f: function to be wrapped
    """
    @wraps(f)
    def wrapper(*args, **kwargs):
        try:
            buff = f(*args, **kwargs)
            return utils.to_json(buff)
        except Exception as exc:
            return not_found(error=exc)
    return wrapper


# API ENDPOINTS
@API.route('/elements', methods=['GET'])
@API.route('/elements/<sphere>', methods=['GET'])
@response_manager
def elements(sphere=None):
    return persistence.get_elements(sphere=sphere)


@API.route('/disciplines', methods=['GET'])
@response_manager
def disciplines():
    return persistence.get_disciplines()


@API.route('/exercises/<discipline>', methods=['GET'])
@response_manager
def exercises_discipline(discipline):
    # TODO: check valid uri to avoid db error when querying ?
    return persistence.get_exercises_discipline(discipline, filters=request.args)
