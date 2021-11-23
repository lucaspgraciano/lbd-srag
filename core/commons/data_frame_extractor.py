import os
import logging
import time
import pandas as pd


class DataFrameExtractor:
    RESOURCES_ROOT_DIR = 'resources'
    SPREADSHEET_FILENAME = 'INFLUD-25-10-2021.csv'
    SEPARATOR = ';'
    CHUNKSIZE = 10 ** 5

    def __init__(self):
        self.resources_filepath = None
        self.data = None

    def run(self):
        self.__get_root_path()
        self.__extract_data_from_spreadsheet()
        return self.data

    def __get_root_path(self):
        working_directory = os.getcwd()
        self.resources_filepath = f'{working_directory}/{self.RESOURCES_ROOT_DIR}/{self.SPREADSHEET_FILENAME}'

    def __extract_data_from_spreadsheet(self):
        logging.info('Iniciando extração de dados da planilha')
        start = time.time()
        temporary_list = []
        for chunk in pd.read_csv(self.resources_filepath,
                                 sep=self.SEPARATOR,
                                 chunksize=self.CHUNKSIZE,
                                 low_memory=False):
            temporary_list.append(chunk)
        self.data = pd.concat(temporary_list, axis=0)
        del temporary_list
        end = time.time()
        logging.info('Dados extraídos da planilha em {:.2f} segundos'.format(end - start))
