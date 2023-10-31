from DAO import*
from Regiao import*

class RegiaoDAO(DAO):
    def __init__(self):
        super().__init__('região.pkl')

    def add(self, regiao: Regiao):
        if (regiao is not None) and isinstance(regiao, Regiao):
            return super().add(regiao, regiao.resultado_parcial)
        
    def get(self, key): #obtem a quantidade de votos do candidato através do nome dele
        if isinstance(key, str):
            return super().get(key)
    
    def remove(self, key):
        if isinstance(key, str):
            return super().remove(key)

#chave = nome do candidato
#item = votos
