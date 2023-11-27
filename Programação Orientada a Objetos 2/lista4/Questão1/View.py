class View:
    def __init__(self) -> None:
        self.__tela = {
            'sair': 'fechar tela'
            ''
        }


    @property
    def tela(self):
        return self.__tela
    
    @tela.setter
    def tela(self, tela):
        self.__tela = tela

