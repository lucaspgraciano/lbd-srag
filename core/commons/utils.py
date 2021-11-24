from datetime import datetime


class Utils:
    NULL_CSV_VALUE = 'nan'
    DATE_TYPE_MODEL = '%d/%m/%Y'

    @staticmethod
    def check_nullity_of_the_value(value):
        if value == Utils.NULL_CSV_VALUE:
            return None
        else:
            return str(value)

    @staticmethod
    def convert_string_to_date(string):
        try:
            if string == 'nan':
                return None
            else:
                return datetime.strptime(str(string), Utils.DATE_TYPE_MODEL)
        except Exception:
            return None
