"""
CREADO POR: SANDRA GARCES
FECHA: 15-JUL-2017
CLASE: calculator_class
METODOS:
NOMBRE: sum
"""
class CalculatorClass(object):
	"""
	CON UN CICLO FOR SE SUMA EN
    UNA VARIABLE TODOS LOS ELEMNTOS
    DE LA LISTA SUMINISTRADA
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
