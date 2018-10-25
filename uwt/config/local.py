# Database settings
DATABASE_HOSTNAME = 'mysql'
DATABASE_USERNAME = 'root'
DATABASE_PASSWORD = 'root'
DATABASE_SCHEMA = 'UWT'
SQLALCHEMY_DATABASE_URI = 'mysql://{user}:{passwd}@{host}/{schema}?charset=utf8'.format(host=DATABASE_HOSTNAME, user=DATABASE_USERNAME, passwd=DATABASE_PASSWORD, schema=DATABASE_SCHEMA)
DEBUG_DATABASE = True
