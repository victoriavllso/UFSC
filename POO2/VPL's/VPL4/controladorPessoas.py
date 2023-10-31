from abstractControladorPessoas import AbstractControladorPessoas
from cliente import Cliente
from tecnico import Tecnico


class ControladorPessoas():
    def __init__(self):
        self.__clientes = []
        self.__tecnicos = []

    @property
    def clientes(self) -> list:
        return self.__clientes

    @property
    def tecnicos(self) -> list:
        return self.__tecnicos

    def incluiCliente(self, codigo: int, nome: str) -> Cliente:
        for cliente in self.clientes:
            if cliente.codigo == codigo:
                return None
                      
        cliente = Cliente(nome, codigo)
        self.clientes.append(cliente)    
        return cliente       

    def incluiTecnico(self, codigo: int, nome: str) -> Tecnico:
        for tecnico in self.tecnicos:
            if tecnico.codigo == codigo:
                return None

        
        tecnico = Tecnico(nome, codigo)
        self.tecnicos.append(tecnico)
        return tecnico
