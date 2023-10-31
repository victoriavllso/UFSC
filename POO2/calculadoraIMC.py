import PySimpleGUI as sg

class CalcularImc():
    def __init__(self, peso, altura) -> None:
        self.__peso = peso 
        self.__altura = altura

    @property
    def peso(self):
        return self.__peso
    
    @property
    def altura(self, altura):
        return self.__altura

    def calcular_imc(self, dic):
        alturastr = dic["altura"].replace(",","").replace(".","")
        peso = float(dic["peso"])
        altura = float(alturastr)/100
        imc = peso/(altura**2)
        return round(imc,2) #arredonda para 2 casas decimais

linha0 = [sg.Text("Qual seu peso?"), sg.InputText("", key="peso"), sg.Text("Kg")]
linha1 = [sg.Text("Qual sua altura?"), sg.InputText("", key="altura"), sg.Text("cm")]
linha2 = [sg.Text("Seu IMC é"),sg.Text('', key="imc", size=(6,1))]
linha3 = [sg.Text('', size=(14,1)), sg.Button("Calcular IMC")]
container = [linha0, linha1, linha2, linha3]


# Janela principal
window = sg.Window("Calculadora de IMC", container,font=("Helvetica", 14))

# Loop de eventos
rodando = True
while rodando:
    event, dic = window.read()
    if event == sg.WIN_CLOSED:
        rodando = False
    elif event == 'Calcular IMC':
        imc = CalcularImc(dic["peso"],dic["altura"])
        calculo = imc.calcular_imc(dic)
        window.Element('imc').Update(calculo)

window.close()