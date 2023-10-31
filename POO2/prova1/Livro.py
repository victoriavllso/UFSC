class Livro():
    def __init__(self, titulo, resumo, autor, personagem_principal, genero, faixa_etaria) -> None:
        self.__titulo = titulo
        self.__resumo = resumo 
        self.__autor = autor 
        self.__personagem_principal = personagem_principal
        self.__genero = genero
        self.__faixa_etaria = faixa_etaria


    @property
    def titulo(self):
        return self.__titulo
    
    @titulo.setter
    def titulo(self,titulo):
        self.__titulo = titulo

    @property
    def resumo(self):
        return self.__resumo
    
    @resumo.setter
    def resumo(self, resumo):
        self.__resumo = resumo

    @property
    def autor(self):
        return self.__autor
    @autor.setter
    def autor(self, autor):
        self.__autor = autor
    
    @property
    def personagem_principal(self):
        return self.__personagem_principal
    
    @personagem_principal.setter
    def personagem_principal(self, personagem_principal):
      self.__personagem_principal = personagem_principal

    @property
    def genero(self):
        return self.__genero 
    
    @genero.setter
    def genero(self, genero):
        self.__genero = genero

    @property
    def faixa_etaria(self):
        return self.__faixa_etaria
    
    @faixa_etaria.setter
    def faixa_etaria(self, faixa_etaria):
        self.__faixa_etaria = faixa_etaria

