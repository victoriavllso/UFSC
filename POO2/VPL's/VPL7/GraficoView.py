import matplotlib.pyplot as plt
from View import*
from Regiao import*
import PySimpleGUI as sg
import os
import tempfile

class GraficoView(View):
    def __init__(self, title):
        super().__init__(title)

    def tela_consulta(self):
            tipos_graficos = ["Barras", "Pizza", "Dispersão"]
            linha0 = [sg.Text("Selecione o tipo de gráfico que deseja")]
            linha1 = [sg.InputCombo(values=tipos_graficos, size=(20,2))]
            linha2 = [sg.Button('Confirmar')]
            linha3 = [sg.Text('', key='-INFO-')]

            self.__container = [linha0,linha1,linha2, linha3]
            self.update_layout(self.__container)

    def exibir_grafico(self, tipo_grafico, regiao):
        candidatos = list(regiao.resultado_parcial.keys())
        votos = list(regiao.resultado_parcial.values())
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

              
