import json


def to_json(data):
    if not data:
        return json.dumps({})
    if isinstance(data, dict):
        return json.dumps(data)
    elif isinstance(data, list):
        if hasattr(data[0], 'to_dict'):
            # models.CUSTOMBASE object
            return json.dumps([record.to_dict() for record in data])
    return json.dumps({})

