"""
CREADO POR: SANDRA GARCES
FECHA: 15-JUL-2017
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
        sum = 0
        for number in num_list:
            sum = sum + number
        return sum
