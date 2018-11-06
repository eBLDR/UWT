from flask import request

from uwt.app.api import API
from uwt.helpers import utils
from uwt.persistence import persistence


# ENDPOINTS
@API.route('/', methods=['GET'])
def _():
    return 'OK'


@API.route('/echo', methods=['GET', 'POST', 'PUT', 'DELETE'])
def echo():
    data = {
        'method': request.method,
	'status_code': 200
    }

    return utils.to_json(data)


@API.route('/elements', methods=['GET'])
@API.route('/elements/<sphere>', methods=['GET'])
def elements(sphere=None):
    buff = persistence.get_elements(sphere=sphere)
    return utils.to_json(buff)


@API.route('/exercises/<discipline>', methods=['GET'])
@API.route('/exercises/<discipline>/<group>', methods=['GET'])
def exercises_calisthenics(discipline, group=None):
    buff = persistence.get_exercises_discipline(discipline, group=group)
    return utils.to_json(buff)

