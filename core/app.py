import logging
import time

from .commons import Logger, DataFrameExtractor, Database, DataInsertion


class App:
    def __init__(self):
        Logger()
        self.data = None
        self.db = None

    def run(self):
        self.__get_spreadsheet_data()
        self.__create_database_connection()
        self.__create_main_schema()
        self.__insert_data_into_database()

    def __get_spreadsheet_data(self):
        data_frame_extractor = DataFrameExtractor()
        self.data = data_frame_extractor.run()

    def __create_database_connection(self):
        self.db = Database()
        self.db.connect()

    def __create_main_schema(self):
        main_query = open('core/schema/main.sql', 'r').read()
        self.db.execute(main_query)

    def __insert_data_into_database(self):
        data_inserter = DataInsertion(self.db)
        logging.info('Iniciando a inserção de dados')
        start = time.time()
        for index, row in enumerate(self.data.itertuples()):
            data_inserter.run(row)
        end = time.time()
        logging.info('Inserção de dados concluída em {:.2f} segundos'.format(end - start))
