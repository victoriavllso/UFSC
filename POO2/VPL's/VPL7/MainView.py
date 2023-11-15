import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import numpy as np
import matplotlib
import PySimpleGUI as sg
from View import*
from utils import*
from CandidatoDAO import*
from ImportView import *
matplotlib.use('TkAgg')

class MainView(View):
    def __init__(self, controller=""):
        super().__init__(title = "Sistema de votação", controller=controller)
        self.tkcanvas = None
        self.filter = {
            "tipo": "barra",
            "regiao": "",
            "nome": ""
        }

        layout = [
            [[sg.Text("Tipo:"), sg.InputCombo(values=['barra', 'pizza'], default_value='barra', enable_events=True, key="--tipo--")]],
            [[sg.Text("Região:"), sg.InputCombo(values=estados, enable_events=True, key="--regiao--"),
              sg.Text("Candidato:"), sg.InputCombo(values=self.controller.get_nomes(), enable_events=True, key="--nome--")]],
            [sg.Canvas(key='--Canvas--')],
            [sg.Button('Importar')]
        ]
        
        self.update_layout(layout)
        self.draw_graph()
        
    def draw_graph(self):
        if self.tkcanvas:
            self.tkcanvas.get_tk_widget().pack_forget()
            
        regiao = self.filter["regiao"]
        nome = self.filter["nome"]
        
        candidatos = self.controller.get_candidatos(regiao, nome)
            
        fig = matplotlib.figure.Figure(figsize=(5, 4), dpi=100)
        if self.filter["tipo"] == "barra":
            fig.add_subplot().bar(candidatos.keys(), height=candidatos.values())
        else:
            fig.add_subplot().pie(candidatos.values(), labels=candidatos.keys())
            
        
        canvas = self.window["--Canvas--"].TKCanvas
        
        self.tkcanvas = FigureCanvasTkAgg(fig, canvas)
        self.tkcanvas.draw()  
        self.tkcanvas.get_tk_widget().pack(side='top', fill='both', expand=1)
        
    def loop(self, event, values):
        if event == 'Importar':
            import_view = ImportView(controller=self.controller)
            import_view.start()
        elif event == '--regiao--' or event == '--nome--':
            self.filter["regiao"] = values["--regiao--"]
            self.filter["nome"] = values["--nome--"]
            self.draw_graph()
        
        if values["--tipo--"] != self.filter['tipo']:
            self.filter['tipo'] = values['--tipo--']
            self.update()
            
    def update(self):
        self.draw_graph()