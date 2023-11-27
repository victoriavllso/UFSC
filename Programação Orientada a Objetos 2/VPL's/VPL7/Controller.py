from ImportView import*
import PySimpleGUI as sg
from CandidatoDAO import*
from MainView import*
from utils import*
import json

class Controller:
  def __init__(self, dao) -> None:
    self.dao = dao
    
  def get_nomes(self):
    return self.dao.get_nomes()
    
  def get_candidatos(self, regiao="", nome=""):
    if nome == "":
      nomes = self.dao.get_nomes()
      votos = self.dao.get_votos_todos(regiao)
      
      candidatos = {}
      
      for i in range(len(nomes)):
        candidatos[nomes[i]] = votos[i]
      return candidatos
    else:
      return self.dao.get_votos_candidato(nome, regiao)
    
  def importar(self, file):
    arq_json = json.load(open(file, 'r'))
    for candidato in arq_json:
      nome = candidato['candidato']

      for regiao in candidato['votos'].keys():
        self.dao.add(nome, regiao, candidato['votos'][regiao])
    self.dao.events.notify('import')
      
    