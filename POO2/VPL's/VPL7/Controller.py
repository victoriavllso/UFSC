from GraficoView import*
from ExportView import*
from ImportView import*
import PySimpleGUI as sg
from RegiaoDAO import*
from MainView import*

class Controller:
    def __init__(self) -> None:
        self.__telaPrincipal = MainView(self)
        self.__telaExport = ExportView(self)
        self.__telaImport = ImportView(self)
        self.__regiaoDAO = RegiaoDAO(self)

    def exportar(self):
        event, values = self.__telaExport.le_eventos()

        exportacao_ativada = True
        if event == sg.WIN_CLOSED:
            self.__telaExport.fim()
            exportacao_ativada = False
        elif event == 'Exportar':
            caminho = values['caminho_exportacao']
            self.__regiaoDAO.set_data_source(caminho)
            self.__telaExport.fim()
            exportacao_ativada = False

        return exportacao_ativada

    def inicia(self):

        tela_inicial = self.__telaPrincipal.tela_consulta()

        rodando = True



        while rodando:

            if event == 'Exportar':
                self.__telaExport.tela_consulta()





