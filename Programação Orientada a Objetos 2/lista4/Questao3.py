import numpy

class LogaritmoNatural:
    def __init__(self, numero):
        self.__numero = numero

    def ln(self):
        x = numpy.log(self.__numero) 
        return x
    
class Adapter:
    def __init__(self, log_natural) -> None:
        self.__log_natural = log_natural
    

    def calculo_log(self, nova_base):
        resultado = self.__log_natural/numpy.log(nova_base)
        return resultado
    
natural = LogaritmoNatural(2) #lne(2)
resultado = natural.ln()
print(f'resultado do ln { resultado }')

adaptador = Adapter(resultado) #log3(2) = ln(2)/ln(3) sendo 3 a nova base
nova_base = adaptador.calculo_log(3)

print(f'resultado da nova base { nova_base}')

