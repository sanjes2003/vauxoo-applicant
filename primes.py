"""
CREADO POR: SANDRA GARCES
FECHA: 15-JUL-2017
CLASE: prime_class
METODOS:
is_prime
"""
class PrimeClass(object):
	def is_prime(self, num_int):
		num_int = abs(num_int)
		if (num_int != 0) and (num_int != 1):
			middle = int(num_int / 2)
			for number in range (2,(middle + 1)):
				if num_int % number == 0:
					return False
			return True
		return False