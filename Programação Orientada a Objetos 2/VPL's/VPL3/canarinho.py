from ave import Ave

class Canarinho(Ave):
    def __init__(self, tamanho_passo: int, altura_voo: int):
        super().__init__(tamanho_passo, altura_voo)

    def cantar(self):
        return f"AVE: PRODUZ SOM: PIU"
        
    def produzir_som(self):
        pass
    
    def mover(self):
        return f"ANIMAL: DESLOCOU {self.tamanho_passo} VOANDO"