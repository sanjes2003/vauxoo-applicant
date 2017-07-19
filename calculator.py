"""
CREADO POR: SANDRA GARCES
FECHA: 18-JUL-2017
CLASE: calculator_class
METODOS:
NOMBRE: sum
"""


class CalculatorClass(object):
    """
    En un ciclo For se acumula la suma
    """
    def sum(self, num_list):
        """
        VARIABLE SUM ES EL RESULTADO
        A RETORNAR
        """
        acum = 0
        for number in num_list:
            acum = acum + number
        return acum
