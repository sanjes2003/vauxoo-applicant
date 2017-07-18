# CREADO POR: SANDRA GARCES
# FECHA: 15-JUL-2017
# CLASE: prime_class
# METODOS:
#	NOMBRE: is_prime
class PrimeClass(object):
	#DESCRIPCION: INDICA SI UN NUMERO DADO ES PRIMO O NO 
	def is_prime(self, num_int):
		# METODO PRINCIPAL PARA EL CALCULO DE LOS NUMEROS PRIMOS
		# SE TRABAJA CON EL NUMERO POSITIVO
		num_int = abs(num_int)
		# LOS NUMEROS 0 Y 1 NO SON PRIMOS, SE VALIDA ANTES DE ENTRAR AL CICLO
		if (num_int != 0) and (num_int != 1):
			middle = int(num_int / 2)
			for i in range (2, (middle + 1)):
				if num_int % i == 0:
					return False
			return True
		return False