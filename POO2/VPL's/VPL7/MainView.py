import PySimpleGUI as sg
from View import*

class MainView(View):
    def __init__(self, title):
        super().__init__(title)

    def tela_consulta(self):
        linha0 = [sg.Text('Digite os dados para cadastro: ')]
        linha1 = [sg.Text('Região'), sg.InputText('', key = 'regiao')]
        linha2 = [sg.Text('Candidato'), sg.InputText('', key = 'candidato')]
        linha3 = [sg.Text('Quantidade de votos'), sg.InputText('', key = 'votos')]
        linha4 = [sg.Button('Cadastrar'), sg.Button('Consultar'), sg.Button('Remover')]
        linha5 = [sg.Button('Exportar'), sg.Button('Importar'), sg.Button('Visualizar gráficos')]

        self.__container = [linha0, linha1, linha2, linha3, linha4, linha5]
        self.update_layout(self.__container)