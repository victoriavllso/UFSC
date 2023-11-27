from abc import ABC, abstractmethod
import pickle

class DAO(ABC):
    def __init__(self, dados):
        super().__init__()
        self.dados = dados
        self.cache = {}

    def dump(self): #escrever os dados serializados
        pickle.dump(self.cache, open(self.dados,'wb'))

    def load(self): #carregar (ler) os dados serializados
        pickle.load(open(self.dados, 'rb'))

    def add(self, key, objeto):
        self.cache[key] = objeto
        self.dump() #salvar o cache atualizado
    
    def remove(self,key):
        try:
            self.cache.pop(key)
            self.dump() #salvar o cache atualizado

        except KeyError:
            raise

    def get(self, key):
        try:
            self.cache[key]
        except KeyError:
            raise

    def get_all(self):
        return self.cache.values() #retorna todos os objetos

