import PySimpleGUI as sg
from View import*

class ImportView(View):
    def __init__(self, title, controlador):
        super().__init__(title, controlador)

    def tela_consulta(self):
        linha0 = [sg.Text('Digite o nome arquivo que será importado: ')]
        linha1 = [sg.InputText('', key = 'caminho_importacao')]
        linha2 = [sg.Button('Importar')]

        self.__container = [linha0, linha1, linha2]
        self.update_layout(self.__container)