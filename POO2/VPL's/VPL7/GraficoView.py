import matplotlib.pyplot as plt
from View import*
from Regiao import*
import PySimpleGUI as sg
import os
import tempfile

class GraficoView(View):
    def __init__(self, title, controlador):
        super().__init__(title, controlador)

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

              


'''
regiao_exemplo = Regiao("Região A")
regiao_exemplo.registrar_votos("Candidato A", 30)
regiao_exemplo.registrar_votos("Candidato B", 45)
regiao_exemplo.registrar_votos("Candidato C", 15)
regiao_exemplo.registrar_votos("Candidato D", 10)

# Classe GraficoView
grafico_view = GraficoView("Gráfico Eleitoral", None)  # Certifique-se de ter uma instância de controlador
grafico_view.tela_consulta()
# Teste a criação de um gráfico de barras
#grafico_view.exibir_grafico("Barras", regiao_exemplo)

# Teste a criação de um gráfico de pizza
grafico_view.exibir_grafico("Pizza", regiao_exemplo)
'''


grafico_view = GraficoView("Sistema view", None)
grafico_view.tela_consulta()
while True:
    event, values = grafico_view.le_eventos()
    if event == sg.WIN_CLOSED:
        break
    elif event == 'Confirmar':
        tipo_grafico = values['-TIPO-']
        grafico_view.exibir_grafico(tipo_grafico, regiao_exemplo)  # Altere regiao_exemplo para os seus dados

grafico_view.window.close()