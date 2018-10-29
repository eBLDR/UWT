# Database settings
DATABASE_HOSTNAME = 'mysql'
DATABASE_USERNAME = 'root'
DATABASE_PASSWORD = 'root'
DATABASE_SCHEMA = 'UWT'
SQLALCHEMY_DATABASE_URI = 'mysql://{user}:{passwd}@{host}/{schema}?charset=utf8'.format(host=DATABASE_HOSTNAME, user=DATABASE_USERNAME, passwd=DATABASE_PASSWORD, schema=DATABASE_SCHEMA)

# Flask App settings
APP_HOST = '127.0.0.1'
APP_PORT = 5000
APP_TEMPLATES_FOLDER = 'templates'
APP_API_URL_PREFIX = '/api'


# Logger settings
LOG_PATH = 'log/log.log'
LOG_LEVEL = 'DEBUG'

