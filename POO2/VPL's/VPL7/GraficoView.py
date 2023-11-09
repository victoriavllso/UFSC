import matplotlib.pyplot as plt
from View import*
from Candidato import*
import PySimpleGUI as sg
import os
import tempfile
from utils import*
from CandidatoDAO import*


class GraficoView(View):
    def __init__(self):
        super().__init__(title = "Resultados gráficos do candidato")
        self.dao = CandidatoDAO()

    def tela_consulta(self):
            
            tipos_graficos = ["Barras", "Pizza", "Dispersão"]
            linha0 = [sg.Text("Selecione o tipo de gráfico que deseja e a região para verificar")]
            linha1 = [sg.InputCombo(values=estados)]
            linha2 = [sg.InputCombo(key= 'tipos_graficos',values=tipos_graficos, size=(20,2))]
            linha3 = [sg.Button('Confirmar')]
            linha4 = [sg.Text('', key='-INFO-')]

            self.__container = [linha0,linha1,linha2, linha3]
            self.update_layout(self.__container)

    def exibir_grafico(self, tipo_grafico, regiao):
        #candidatos = self.dao.get_nomes(regiao)
        candidatos = self.dao.get_nomes(regiao)
        votos = self.dao.get_votos_todos(regiao)
        if tipo_grafico == 'Barras':
            plt.bar(candidatos, votos)
            plt.xlabel('Candidatos')
            plt.ylabel('Votos')
            plt.title('Gráfico de Barras')
            plt.xticks(rotation=45)
            plt.show()

        if tipo_grafico == 'Pizza':
            plt.pie(votos, labels=candidatos, autopct='%1.1f%%', startangle=140)
            plt.title('Gráfico pizza')
            
            # Salvar o gráfico de pizza em um arquivo temporário
            temp_file_path = os.path.join(tempfile.gettempdir(), 'grafico_pizza.png')
            plt.savefig(temp_file_path)
            
            # Exibir o gráfico de pizza do arquivo temporário
            sg.popup(f'Gráfico de Pizza', image=temp_file_path)

              
