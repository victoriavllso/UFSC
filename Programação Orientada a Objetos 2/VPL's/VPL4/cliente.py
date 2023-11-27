from pessoa import Pessoa


class Cliente(Pessoa):
    def __init__(self, nome: str, codigo: int):
        self.__codigo = codigo
        self.__nome = nome
		

    @property
    def codigo(self):
    	return self.__codigo
    
    @property
    def nome(self):
    	return self.__nome