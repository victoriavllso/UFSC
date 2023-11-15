import PySimpleGUI as sg
from abc import ABC, abstractmethod
from CandidatoDAO import*

# View do padrão MVC
class View(ABC):
    def __init__(self, title, controller):
        self.__title = title
        self.__container = []
        self.__window = None
        self.controller = controller
        self.dao =  CandidatoDAO()
        self.lista_candidatos = self.dao.get_all()

        sg.theme('Reds')
    # @abstractmethod
    # def tela_consulta(self):
    #     pass

    @property
    def window(self):
        return self.__window

    def update_layout(self, layout):
        self.__window = sg.Window(self.__title, layout, font=('Helvetica', 14), finalize=True, button_color=('brown', 'white'))
    
    def start(self):
        rodando = True
        while rodando:
            event, values = self.__window.read()

            if event == sg.WIN_CLOSED:
                rodando = False
                self.fim()

            else:
                self.loop(event, values)
                
    @abstractmethod
    def loop(self, event, values):
        pass
    
    def fim(self):
        self.__window.close() 
