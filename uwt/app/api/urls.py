from flask import json, request

from uwt.app.api import API


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

