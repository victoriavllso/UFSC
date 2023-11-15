import PySimpleGUI as sg
from View import*

class ImportView(View):
    def __init__(self, controller):
        super().__init__(title="importar", controller=controller)

        linha0 = [sg.Text('Selecione o arquivo para importar: ')]
        linha1 = [sg.Input(readonly=True), sg.FileBrowse(key='caminho_importacao')]
        linha2 = [sg.Button('Importar')]

        self.__container = [linha0, linha1, linha2]
        self.update_layout(self.__container)
        
    def loop(self, event, values):
        if event == 'Importar':
            file = values['caminho_importacao']
            self.controller.importar(file)
            self.fim()