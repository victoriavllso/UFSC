class Regiao():
    def __init__(self, nome) -> None:
        self.__nome = nome
        self.__resultado_parcial = {}


    @property
    def resultado_parcial(self):
        return self.__resultado_parcial
    
    @property
    def nome(self):
        return self.__nome
    
    def registrar_votos(self, candidato, votos):
        if candidato in self.resultado_parcial:
            self.resultado_parcial[candidato] += votos
            return self.resultado_parcial
        else:
            self.resultado_parcial[candidato] = votos
            return self.resultado_parcial




        