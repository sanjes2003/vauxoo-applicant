"""
CREADO POR: SANDRA GARCES
FECHA: 15-JUL-2017
CLASE: prime_class
METODOS:
is_prime
"""
class PrimeClass(object):
   """
   CLASE PRIME retorna True
   si el numero es Primo
   y False en caso contrario
   """
    def is_prime(self, num_int):
    	"""
        METODO is_prime valida si
        el numero suministrado es positivo
        luego verifica si es distinto a 0
        y a 1, por ultimo realiza un ciclo
        hasta encontrar si es primo 
        """
        num_int = abs(num_int)
        if (num_int != 0) and (num_int != 1):
            middle = int(num_int / 2)
            for number in range(2, (middle + 1)):
                if num_int % number == 0:
                    return False
            return True
        return False
