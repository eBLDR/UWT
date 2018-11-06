from flask import redirect, render_template, request

from uwt.app import APP
from uwt.security import authentication


# ERROR HANDLERS
@APP.errorhandler(404)
def not_found(error=None):
    return '{} - 404 - Not found'.format(request.url)


# VIEWS
@APP.route('/')
@APP.route('/index')
def index():
    return render_template('index.html')


@APP.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        if username and password:
            response = authentication.authenticate(username, password)
            return 'Success: {}\nReason: {}'.format(response['auth'], response['reason'])
    return render_template('login.html')


@APP.route('/elements')
def elements():
    return 'OK'


@APP.route('/disciplines')
def disciplines():
    return 'OK'

