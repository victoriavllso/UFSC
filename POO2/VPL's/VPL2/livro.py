from editora import Editora
from autor import Autor
from capitulo import Capitulo

class Livro:
    def __init__(self, codigo: int, titulo: str, ano: int, editora: Editora, autor: Autor, numeroCapitulo: int, tituloCapitulo: str):
        self.__codigo = codigo
        self.__titulo = titulo
        self.__ano = ano
        self.__editora = editora
        self.__autores = []
        self.__autores.append(autor)
        self.__numeroCapitulo = numeroCapitulo
        self.__tituloCapitulo = tituloCapitulo
        self.capitulos = []

    @property
    def codigo(self):
        return self.__codigo
    
    @property
    def titulo(self):
        return self.__titulo

    @property
    def ano(self):
        return self.__ano

    @property
    def editora(self):
        return self.__editora
    
    @property
    def autores(self):
        return self.__autores 

    @codigo.setter
    def codigo(self, codigo):
        self.__codigo = codigo
    
    @titulo.setter
    def titulo(self, titulo):
        self.__titulo = titulo
    
    @ano.setter
    def ano(self, ano):
        self.__ano = ano
    
    @editora.setter
    def editora(self, editora):
        self.__editora = editora




    def incluirAutor(self, autor: Autor):
        if isinstance(autor, Autor):
            if autor not in self.autores:
                self.autores.append(autor)
            else:
                print("Autor já cadastrado")

    def excluirAutor(self, autor: Autor):
        if autor in self.autores:
            self.autores.remove(autor)
        

    def incluirCapitulo(self, numeroCapitulo: int, tituloCapitulo: str):
        contem = False
        for capitulo in self.capitulos:
            if tituloCapitulo == capitulo.titulo:
                contem = True
        if not contem:
            capitulo = Capitulo(numeroCapitulo,tituloCapitulo)
            self.capitulos.append(capitulo)
        

    def excluirCapitulo(self, tituloCapitulo: str):
        for capitulo in self.capitulos:
            if capitulo.titulo == tituloCapitulo:
                self.capitulos.remove(capitulo)

    def findCapituloByTitulo(self, tituloCapitulo: str):
        for capitulo in self.capitulos:
            if capitulo.titulo == tituloCapitulo:
                return capitulo

