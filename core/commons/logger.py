import logging


class Logger:
    LOG_LEVEL = 10

    def __init__(self):
        self.__setup_logger()

    def __setup_logger(self):
        console_handler = logging.StreamHandler()
        line_format = '[%(asctime)s] | %(levelname)s : %(message)s'
        date_format = '%d-%m-%Y %H:%M:%S'
        logging.basicConfig(format=line_format, datefmt=date_format, level=self.LOG_LEVEL, handlers=[console_handler])
