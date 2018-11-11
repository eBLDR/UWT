import logging

from uwt.config import settings

format_ = '%(asctime)s - %(filename)s - %(levelname)s - %(message)s'

logger = logging.getLogger(__name__)

formatter = logging.Formatter(format_)
syslog = logging.StreamHandler()
syslog.setFormatter(formatter)
logger.addHandler(syslog)

file_handler = logging.FileHandler(settings.LOG_PATH)
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

logger.setLevel(settings.LOG_LEVEL)
