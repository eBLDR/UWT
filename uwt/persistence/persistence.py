from functools import wraps
from importlib import import_module

from uwt.helpers.logger import logger
from uwt.persistence.engine import SESSION

MODELS = import_module('uwt.persistence.models')


def session_manager(f):
    """
    Manages database connections.
    :param f: function to be wrapped
    """
    @wraps(f)
    def wrapper(*args, **kwargs):
        session = SESSION()
        try:
            f(*args, **kwargs)
            session.commit()
        except Exception as exc:
            logger.error(exc)
            session.rollback()
        finally:
            session.close()
    return wrapper


# CRUD Transactions
@session_manager
def create(record):
    """
    Insert a new record into database.
    :param record: SQLAlchemy object
    """
    session.add(record)  # TODO: check scope


def read(table_name, filters=None):
    """
    Query records from database.
    :param table: table name
    :param filters: filters
    :return: fetched data
    """
    session = SESSION()
    try:
        table = getattr(MODELS, table_name)
        buff = session.query(table)
        if filters:
            buff = buff.filter_by(**filters)
        return buff.all()
    except Exception as exc:
        logger.error(exc)
    finally:
        session.close()


@session_manager
def update(record, new_data):
    """
    Update an existing record from the database.
    :param record: SQLAlchemy object
    :param new_data: fields with new values to be updated
    """
    record.update(new_data)


@session_manager
def delete(record):
    """
    Delete a record from the database.
    :param record: SQLAlchemy object
    """
    session.delete(record)  # TODO: check scope


# QUERIES
def get_user_by_username(username):
    table_name = 'USERS'
    filters = {}
    if username:
        filters['username'] = username
    return read(table_name, filters=filters)


def get_elements(sphere=None):
    table_name = 'ELEMENTS'
    filters = {}
    if sphere:
        filters['sphere'] = sphere
    return read(table_name, filters=filters)


def get_exercises_calisthenics(group=None):
    table_name = 'EXERCISES_CALISTHENICS'
    filters = {}
    if group:
        filters['group'] = group
    return read(table_name, filters=filters)

