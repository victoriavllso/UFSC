import PySimpleGUI as sg 
from abc import ABC, abstractmethod

# View do padrão MVC
class View(ABC):
    def __init__(self, title):
        self.__title = title
        self.__container = []
        self.__window = None

    @abstractmethod
    def tela_consulta(self):
        pass

    @property
    def window(self):
        return self.__window

    def update_layout(self, layout):
        self.__window = sg.Window(self.__title, layout, font=('Helvetica', 14), button_color=('pink', 'white'))

    def le_eventos(self):
        return self.__window.read()

    def fim(self):
        self.__window.close()
