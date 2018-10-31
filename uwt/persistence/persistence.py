from functools import wraps

from uwt.helpers.logger import logger
from uwt.persistence.engine import SESSION
from uwt.persistence.models import *


def session_manager(f):
    """
    Manages database connections.
    :param f: function to be wrapped
    """
    @wraps(f)
    def wrapper(*args, **kwargs):
        session = SESSION()
        try:
            f()
            session.commit()
        except Exception as exc:
            logger.error(exc)
            session.rollback()
        finally:
            session.close()
    return wrapper


@session_manager
def create_record(record):
    """
    Insert a new record into database.
    :param record: SQLAlchemy object
    """
    session.add(record)


@session_manager
def update_record(record, new_data):
    """
    Update an existing record from the database.
    :param record: SQLAlchemy object
    :param new_data: fields with new values to be updated
    """
    record.update(new_data)


@session_manager
def delete_record(record):
    """
    Delete a record from the database.
    :param record: SQLAlchemy object
    """
    session.delete(record)


def get_elements(sphere=None):
    session = SESSION()
    if sphere:
        buff = session.query(ELEMENTS).filter(ELEMENTS.sphere == sphere.lower()).all()
    else:
        buff = session.query(ELEMENTS).all()
    session.close()
    return buff
