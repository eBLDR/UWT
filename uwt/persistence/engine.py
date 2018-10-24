from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

from uwt import config


ENGINE = create_engine(config.SQLALCHEMY_DATABASE_URI, echo=config.DEBUG_DATABASE)
FACTORY = sessionmaker(bind=ENGINE)
SESSION = scoped_session(FACTORY)

