from flask import json, request

from uwt.app.api import API
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

    return json.dumps(data)


@API.route('/elements', methods=['GET'])
def elements():
    buff = persistence.get_elements()
    data = [record.to_dict() for record in buff] 
    return json.dumps(data)
