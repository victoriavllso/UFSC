class Candidato():
    def __init__(self, nome) -> None:
        self.__nome = nome
        self.__resultado_parcial = {}

    



    @property
    def resultado_parcial(self):
        return self.__resultado_parcial
    
    @property
    def nome(self):
        return self.__nome
    
    def registrar_votos(self, regiao, votos):
        if self.resultado_parcial.get(regiao):
            self.resultado_parcial[regiao] += votos
            # return self.resultado_parcial
            return self.resultado_parcial
        else:
            self.resultado_parcial[regiao] = votos
            return self.resultado_parcial
        

    def __str__(self) -> str:
        return self.nome

####fazer um método para retornar as chaves do dicio



        