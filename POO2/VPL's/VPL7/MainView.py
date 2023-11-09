import PySimpleGUI as sg
from View import*
from utils import*
from CandidatoDAO import*

class MainView(View):
    def __init__(self):
        super().__init__(title = "Sistema de votação")

        


    def tela_consulta(self):
        nomes_candidatos = list(self.lista_candidatos.keys())
        #votos = self.lista_candidatos['nome'].resultado_parcial['regiao']
    

        layout = [
            [sg.Text('Dados para Cadastro ou consulta de Votos:')],
            [sg.Text(''), sg.Text(''), sg.Text('')],
            [sg.Text('Estado:'), sg.InputOptionMenu(values=estados, key='estado')],
            [sg.Text('Candidato:'), sg.InputCombo(values=nomes_candidatos, key='candidato', size=(15, 15))],
            [sg.Text('Quantidade de votos:'), sg.InputText('', key='votos', size=(10, 10))],
            [sg.Text(''), sg.Text(''), sg.Text('')],
            [sg.Text('Resultado')],
            [sg.InputText('', key='resultado')],
            [sg.Text(''), sg.Text(''), sg.Text('')],
            [sg.Button('Cadastrar'), sg.Button('Consultar'), sg.Button('Remover'), sg.Button('Exportar'), sg.Button('Importar'), sg.Button('Visualizar gráficos')]
        ]

        self.update_layout(layout)


    def mostra_resultado(self, resultado):
        self.window.Element('resultado').Update(resultado)
        
    def limpar(self):
        self.window.Element('resultado').Update('')