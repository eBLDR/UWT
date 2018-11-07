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
class DISCIPLINES(CUSTOMBASE):
    __tablename__ = 'DISCIPLINES'
    
    id = Column(Integer, primary_key=True)
    name = Column(String(64), nullable=False)


class ELEMENTS(CUSTOMBASE):
    __tablename__ = 'ELEMENTS'
    
    id = Column(Integer, primary_key=True)
    name = Column(String(64), nullable=False)
    sphere = Column(String(32), nullable=False)


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
    target = variation = Column(String(256))
    level = Column(String(16))
    level_breakthrough = Column(Boolean, default=0)
    skill_static = Column(Boolean, default=0)
    skill_dynamic = Column(Boolean, default=0)
    rep = Column(Boolean, default=0)
    time = Column(Boolean, default=0)
    floor = Column(Boolean, default=0)
    high_bar = Column(Boolean, default=0)
    medium_bar = Column(Boolean, default=0)
    low_bar = Column(Boolean, default=0)
    parallel_bars = Column(Boolean, default=0)
    parallettes = Column(Boolean, default=0)
    swedish_ladder = Column(Boolean, default=0)
    vertical_bar = Column(Boolean, default=0)
    wall = Column(Boolean, default=0)
    rings = Column(Boolean, default=0)
    support = Column(Boolean, default=0)


"""
class EXERCISES_CORE(CUSTOMBASE):
    __tablename__ = 'EXERCISES_CORE'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    level = Column(String(16))
    rep = Column(Boolean, default=0)
    time = Column(Boolean, default=0)
    upper = Column(Boolean, default=0)
    lower = Column(Boolean, default=0)
    oblique = Column(Boolean, default=0)
    time = Column(Boolean, default=0)
    ground = Column(Boolean, default=0)
    high_bar = Column(Boolean, default=0)
    medium_bar = Column(Boolean, default=0)
    low_bar = Column(Boolean, default=0)
    parallel_bars = Column(Boolean, default=0)
    parallettes = Column(Boolean, default=0)
    swedish_ladder = Column(Boolean, default=0)
    vertical_bar = Column(Boolean, default=0)
    wall = Column(Boolean, default=0)
    rings = Column(Boolean, default=0)
    support = Column(Boolean, default=0)
"""


class EXERCISES_PARKOUR(CUSTOMBASE):
    __tablename__ = 'EXERCISES_PARKOUR'
    
    id = Column(Integer, primary_key=True)
    group = Column(String(256), nullable=False)
    variation = Column(String(256), nullable=False)
    level = Column(String(16))


class USERS(CUSTOMBASE):
    __tablename__ = 'USERS'
    
    id = Column(Integer, primary_key=True)
    username = Column(String(256), nullable=False, unique=True)
    password = Column(String(256), nullable=False)


# Tricking exercises missing
