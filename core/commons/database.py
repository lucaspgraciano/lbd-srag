import psycopg2
import os
import logging

from dotenv import load_dotenv


class Database:
    def __init__(self):
        self.__set_defaults()
        self.client = None
        self.db = None

    def __set_defaults(self):
        load_dotenv()
        self.host = os.getenv('DB_HOST')
        self.name = os.getenv('DB_NAME')
        self.user = os.getenv('DB_USER')
        self.passw = os.getenv('DB_PASS')

    def connect(self):
        self.client = psycopg2.connect(dbname=self.name, user=self.user, password=self.passw, host=self.host)
        self.db = self.client.cursor()
        logging.info('Banco de dados conectado com sucesso')

    def execute(self, query, params=None):
        self.db.execute(query, params)
        self.client.commit()

    def close(self):
        self.db.close()
        logging.info('Conexao com banco de dados encerrada com sucesso')