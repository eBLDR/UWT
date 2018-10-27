from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

from uwt.config import settings

ENGINE = create_engine(settings.SQLALCHEMY_DATABASE_URI)
FACTORY = sessionmaker(bind=ENGINE)
SESSION = scoped_session(FACTORY)
