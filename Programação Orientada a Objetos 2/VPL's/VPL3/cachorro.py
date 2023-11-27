from abc import ABC, abstractmethod
from mamifero import Mamifero

class Cachorro(Mamifero, ABC):
    def __init__(self, volume_som = 3, tamanho_passo = 3):
        super().__init__(tamanho_passo, volume_som)

    def latir(self):
        return f'MAMIFERO: PRODUZ SOM: {self.volume_som} SOM: AU'
        
    def produzir_som(self):
        pass
    def mover(self):
        return f'ANIMAL: DESLOCOU {self.tamanho_passo}'