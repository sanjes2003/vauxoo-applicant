# CREADO POR: SANDRA GARCES
# FECHA: 15-JUL-2017
# CLASE: calculator_class
# METODOS:
#	NOMBRE: sum
class CalculatorClass(object):
	#DESCRIPCION: DEVUELVE LA SUMA DE UNA LISTA DE NUMEROS 
	def sum(self, num_list):
		#METODO PRINCIPAL QUE REALIZA LA SUMA DE LA LISTA DE NUMEROS
		sum = 0
		for VAR_I in num_list:
			sum += VAR_I
		return sum