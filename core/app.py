import logging

from .commons import Logger, DataFrameExtractor, Database
from datetime import datetime


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
        for row in self.data.itertuples():
            self.db.execute(
                """INSERT INTO covid.registro (dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_regiona, co_regiona, id_municip, co_mun_not, id_unidade, co_uni_not) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
                (self.__convert_date_type(row.DT_NOTIFIC), str(row.SEM_NOT), self.__convert_date_type(row.DT_SIN_PRI), str(row.SEM_PRI), str(row.SG_UF_NOT), str(row.ID_REGIONA), str(row.CO_REGIONA), str(row.ID_MUNICIP), str(row.CO_MUN_NOT), str(row.ID_UNIDADE), str(row.CO_UNI_NOT))
            )

    @staticmethod
    def __check_nullity_of_the_value(value):
        if value == 'nan':
            return None
        else:
            return value

    @staticmethod
    def __convert_date_type(string_date):
        return datetime.strptime(string_date, '%d/%m/%Y')
