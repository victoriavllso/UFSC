from EventManager import *
from Controller import *
from MainView import *
from CandidatoDAO import *

class Application:
  def __init__(self):
    self.dao = CandidatoDAO()
    ctrl = Controller(self.dao)
    self.main_view = MainView(ctrl)
    self.dao.events.subscribe('import', self.main_view)
    
  def start(self):
    self.main_view.start()
    
app = Application()
app.start()