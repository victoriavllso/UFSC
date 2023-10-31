import PySimpleGUI as sg
from View import*

class ExportView(View):
    def __init__(self, title, controlador):
        super().__init__(title, controlador)

    def tela_consulta(self):
        linha0 = [sg.Text('Digite o nome arquivo que será salvo: ')]
        linha1 = [sg.InputText('', key = 'caminho_exportacao')]
        linha2 = [sg.Button('Exportar')]

        self.__container = [linha0, linha1, linha2]
        self.update_layout(self.__container)