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
    
    def cadastro(self, regiao: Regiao, candidato, votos):
        reg = regiao.registrar_votos(candidato, votos)
        self.__regiaoDAO.add(reg)
        return 'Região adicionada com sucesso !'
    

    def busca_candidato(self):
        


    def inicia(self):

    
        rodando = True



        while rodando:
            event, values = self.__telaPrincipal.le_eventos()

            if event == 'Cadastrar':
                regiao = str(values['regiao'])
                candidato = str(values['candidato'])
                votos = int(values['votos'])
                resultado = self.cadastro(regiao,candidato,votos)

            elif event == 'Consultar':
                candidato = self.__regiaoDAO.get(candidato)
                





