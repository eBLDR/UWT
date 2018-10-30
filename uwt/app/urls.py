from flask import redirect, render_template, request

from uwt.app import APP


# ERROR HANDLERS
@APP.errorhandler(404)
def not_found(error=None):
    return '{} - 404 - Not found'.format(request.url)


# VIEWS
@APP.route('/')
@APP.route('/index')
def index():
    return render_template('index.html')

