import os
import pandas as pd


class DataFrameExtractor:
    RESOURCES_ROOT_DIR = 'resources'
    SPREADSHEET_FILENAME = 'INFLUD-25-10-2021.csv'
    SEPARATOR = ';'

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
        self.data = pd.read_csv(self.resources_filepath, sep=self.SEPARATOR, low_memory=False)
