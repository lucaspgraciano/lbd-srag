import logging

from .commons import Logger, DataFrameExtractor


class App:
    def __init__(self):
        Logger()
        self.data = None

    def run(self):
        self.__get_spreadsheet_data()

    def __get_spreadsheet_data(self):
        logging.info('Iniciando extração de dados da planilha.')
        data_frame_extractor = DataFrameExtractor()
        self.data = data_frame_extractor.run()
        logging.info('Dados extraídos da planilha com sucesso.')
