import hashlib

from uwt.persistence import persistence


def authenticate(username, password):
    """
    Authentica user credentials.
    :param username: user name input
    :param password: user password input
    :return auth: validation result
    """
    auth = {'auth': False,
            'reason': ''}
    
    user = persistence.get_user_by_username(username)

    if user:
        hash_pwd = hashlib.md5(password.encode('utf-8')).hexdigest()
        if user.password == hash_pwd:
            auth['auth'] = True
        else:
            auth['reason'] = 'Wrong password.'
    else:
        auth['reason'] = 'Username not found.'

    return auth
