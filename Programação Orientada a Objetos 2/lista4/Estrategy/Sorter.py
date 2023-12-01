class Sorter:
    def __init__(self, metodo):
        self.metodo = metodo

    def set_metodo(self, metodo):
        self.metodo = metodo

    def ordenando(self):
        self.metodo.ordenar()