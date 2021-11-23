from .commons import Logger, DataFrameExtractor, Database


class App:
    def __init__(self):
        Logger()
        self.data = None
        self.db = None

    def run(self):
        self.__get_spreadsheet_data()
        self.__create_database_connection()
        self.__create_main_schema()

    def __get_spreadsheet_data(self):
        data_frame_extractor = DataFrameExtractor()
        self.data = data_frame_extractor.run()

    def __create_database_connection(self):
        self.db = Database()
        self.db.connect()

    def __create_main_schema(self):
        main_query = open('core/schema/main.sql', 'r').read()
        self.db.execute(main_query)

