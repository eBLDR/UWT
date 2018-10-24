# ORM mapper
from sqlalchemy.ext.declarative import declarative_base

# Data types
from sqlalchemy import Boolean, Column, Integer, String


BASE = declarative_base()


# Custom declarative base
class CUSTOMBASE(BASE):
    __abstract__ = True
    
    def to_dict(self):
        """
	This method populates a dictionary with the attributes : values.
	"""
        tmp = {}
        for i in self.__table__.columns:
            tmp[i.name] = getattr(self, i.name)
        return tmp


# Tables
class EXERCISES_ATHLETICS(CUSTOMBASE):
    __tablename__ = 'EXERCISES_ATHLETICS'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    upper = Column(Boolean, default=0)
    torso = Column(Boolean, default=0)
    lower = Column(Boolean, default=0)


class EXERCISES_CALISTHENICS(CUSTOMBASE):
    __tablename__ = 'EXERCISES_CALISTHENICS'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    movement = Column(String(128))
    level = Column(String(16))
    rep = Column(Boolean, default=0)
    time = Column(Boolean, default=0)
    # Equipment missing


class EXERCISES_CORE(CUSTOMBASE):
    __tablename__ = 'EXERCISES_CORE'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    upper = Column(Boolean, default=0)
    lower = Column(Boolean, default=0)
    oblique = Column(Boolean, default=0)
    level = Column(String(16))
    rep = Column(Boolean, default=0)
    time = Column(Boolean, default=0)
    # Equipment missing


class EXERCISES_PARKOUR(CUSTOMBASE):
    __tablename__ = 'EXERCISES_PARKOUR'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    level = Column(String(16))

# Tricking exercises missing

# TODO: turn 'level' from Str to Integer - update 1+,2+,3+ to int seq

