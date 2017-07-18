"""
CREADO POR: SANDRA GARCES
FECHA: 15-JUL-2017
CLASE: calculator_class
METODOS:
NOMBRE: sum
"""
class CalculatorClass(object):
    def sum(self, num_list):
        sum = 0
        for number in num_list:
            sum = sum + number
        return sum