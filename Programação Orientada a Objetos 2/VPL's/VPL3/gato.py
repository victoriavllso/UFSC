from mamifero import Mamifero

class Gato(Mamifero):
    def __init__(self, volume_som = 2, tamanho_passo =2):
        super().__init__(tamanho_passo, volume_som)

    def miar(self):
        return f'MAMIFERO: PRODUZ SOM: {self.volume_som} SOM: MIAU'
    
    def produzir_som(self):
        pass
    
    def mover(self):
        return f'ANIMAL: DESLOCOU {self.tamanho_passo}'