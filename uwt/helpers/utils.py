import json


def to_json(data):
    response = {
        'status': 'OK',
        'data': None
    }
    
    if not data:
        return json.dumps(response)
    
    elif isinstance(data, dict):
        response['data'] = data

    elif isinstance(data, list):
        if hasattr(data[0], 'to_dict'):
            # models.CUSTOMBASE object
            response['data'] = [record.to_dict() for record in data]

    return json.dumps(response)
