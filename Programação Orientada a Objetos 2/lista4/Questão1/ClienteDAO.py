from lista4.Questão1.DAO import DAO
from lista4.Questão1.Cliente import Cliente

class ClienteDAO(DAO):
    def __init__(self):
        super().__init__('clientes.pkl')

    def add(self, objeto: Cliente):
        if objeto is not None and isinstance(objeto, Cliente) and isinstance(objeto.codigo, int):
            return super().add(objeto.codigo,objeto)
        
    def remove(self, key):
        if isinstance(key, int):
            return super().remove(key)
        
    def get(self, key):
        if isinstance(key, int):
            return super().get(key)