from DAO import*
from Candidato import*
import pickle

class CandidatoDAO(DAO):
    def __init__(self):
        super().__init__('região.pkl')



    def add(self, nome: str, regiao: str, votos: int):
        candidato = self.cache.get(nome)
        
        if candidato is None:
            # Se o candidato com o nome especificado não existe no cache, crie um novo candidato
            candidato = Candidato(nome)
            self.cache[candidato.nome] = candidato
        
        # Verifica se a região já existe no resultado parcial do candidato
        if regiao in candidato.resultado_parcial:
            # Atualiza o número de votos na região existente
            candidato.resultado_parcial[regiao] += votos
        else:
            # Cria uma nova entrada de região com a contagem de votos
            candidato.resultado_parcial[regiao] = votos

        self.dump()  # Salva o cache atualizado



    def get_votos_regiao(self, nome_candidato, regiao):
        candidato = self.cache.get(nome_candidato)
        if candidato is not None:
            return candidato.resultado_parcial.get(regiao)
        else:
            return 0
    def remove(self, nome_candidato, regiao):
        candidato = self.cache.get(nome_candidato)
        if candidato is not None:
            return candidato.resultado_parcial.pop(regiao)
  
    def get_votos_todos(self, regiao):
        votos_todos = []
        for candidato in self.cache.values():
            votos = candidato.resultado_parcial.get(regiao)
            votos_todos.append(votos)
        return votos_todos

    def get_nomes(self, regiao):
        nomes = []
        for candidado in self.cache:
            if candidado in regiao:
                nomes.append(self.cache.keys())
        return nomes
