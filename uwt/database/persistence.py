from datetime import datetime

from uwt.database import session_manager


# QUERIES
def get_user_by_username(username):
    table_name = 'USERS'
    filters = {}
    if username:
        filters['username'] = username
    return session_manager.read(table_name, filters=filters).first()


def get_elements(sphere=None):
    table_name = 'ELEMENTS'
    filters = {}
    if sphere:
        filters['sphere'] = sphere
    return session_manager.read(table_name, filters=filters).all()


def get_disciplines():
    table_name = 'DISCIPLINES'
    return session_manager.read(table_name).all()


def get_exercises_discipline(discipline, filters=None):
    table_name = 'EXERCISES_' + discipline.upper()
    return session_manager.read(table_name, filters=filters).all()


# DATA PERSISTENCE
def register_user_log(username, event):
    table_name = 'USERS_LOGS'
    user = get_user_by_username(username)
    values = {
        'user_id': user.id,
        'timestamp': datetime.utcnow(),
        'event': event
    }
    session_manager.create(table_name, values)
