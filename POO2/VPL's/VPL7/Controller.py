from GraficoView import*
from ExportView import*
from ImportView import*
import PySimpleGUI as sg
from CandidatoDAO import*
from MainView import*
from utils import*

class Controller:
    def __init__(self) -> None:
        self.__telaPrincipal = MainView()
        self.__telaExport = ExportView(self)
        self.__telaImport = ImportView(self)
        self.__candidatoDAO = CandidatoDAO()
        self.__telaGrafico = GraficoView()


    

    def inicia(self):

        self.__telaPrincipal.tela_consulta() #iniciando a tela


    
        rodando = True
        while rodando:
            event, values = self.__telaPrincipal.le_eventos()

            if event == sg.WIN_CLOSED:
                self.__telaPrincipal.fim()
                rodando = False

            else:
                try:
        
                    if event == 'Cadastrar':
                        nome = str(values['candidato'])
                        votos = int(values['votos'])
                        estado = values['estado']
                        self.__candidatoDAO.add(nome, estado, votos)
                        resultado = 'Candidato adicionado com sucesso !'
                   
                    elif event == 'Consultar': #chave  =nome
                        nome_consulta = str(values['candidato'])
                        estado_consulta = values['estado']
                        resultado = f'Candidato possui {self.__candidatoDAO.get_votos_regiao(nome_consulta, estado_consulta)} votos'                        
                        if resultado is None:
                            resultado = 'Candidato não tem votos cadastrados na região'
                
                    elif event == 'Exportar':
                        self.__telaExport.tela_consulta()
                        self.__telaExport.le_eventos()
                        caminho = values['caminho_exportacao']
                        self.__candidatoDAO.export_source(caminho)
                       

                    elif event == 'Importar':
                        self.__telaImport.tela_consulta()
                        self.__telaImport.le_eventos()
                        caminho = values['caminho_exportacao']
                        self.__candidatoDAO.import_source(caminho)

                    elif event == 'Remover': #remover os votos de uma região
                        regiao = values['estado']
                        nome_candidato = values['candidato']
                        self.__candidatoDAO.remove(nome_candidato,regiao)
                        resultado = f'Votos do candidato removido da região {regiao} com sucesso'

                    elif event == 'Visualizar gráficos':
                        self.__telaGrafico.tela_consulta()
                        evento, valores = self.__telaGrafico.le_eventos()

                        if evento == 'Confirmar':
                            estado_consulta = values['estado']
                            tipo = valores['tipos_graficos']
                            votos = self.__candidatoDAO.get_votos_todos(estado_consulta)
                            print(votos)
                            self.__telaGrafico.exibir_grafico(tipo, estado_consulta)
                    

                except KeyError as e:
                    print(e)
                    resultado = 'Candidato não tem votos cadastrados na região'

                except ValueError:
                    resultado = 'Os votos devem ser um número inteiro'
            if resultado != '':
                dados = str(resultado)
                self.__telaPrincipal.mostra_resultado(dados)
                





