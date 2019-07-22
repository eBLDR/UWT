import hashlib

from uwt.database import persistence


def authenticate_user(username, password):
    """
    Authenticate user credentials.
    :param username: user name input
    :param password: user password input
    :return auth: validation result
    """
    auth = False
    reason = ''
    
    user = persistence.get_user_by_username(username)

    if user:
        hash_pwd = hashlib.md5(password.encode('utf-8')).hexdigest()
        if user.password == hash_pwd:
            auth = True
        else:
            reason = 'Wrong password.'
    else:
        reason = 'Username not found.'

    return auth, reason
