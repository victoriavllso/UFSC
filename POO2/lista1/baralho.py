'''Projete e implemente um baralho de cartas genérico, isto é, que poderia ser usado para
implementar diversos jogos de carta
'''
import random

class Carta():
    def __init__(self, naipe, numeracao):
        self.naipe = naipe
        self.numeracao = numeracao

    def __str__(self) -> str:
        return f"{self.numeracao} de {self.naipe}" #por que é necessário ? se eu remover esse método, ele imprime apenas o endereço de memória



class Baralho():
    naipes = ["Copas","Espadas","Ouros","Paus"]
    numeracoes = ["1","2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"]
    def __init__(self):
        self.cartas = []
        for naipe in self.naipes:
            for numeracao in self.numeracoes:
                carta = Carta(naipe,numeracao)
                self.cartas.append(carta)

    def embaralhar(self):
        random.shuffle(self.cartas)
    
    def remover_carta(self):
        return self.cartas.pop()
    
    def adicionar_carta(self,carta):
        return self.cartas.append(carta)
    
    def __str__(self):
        exibe = []
        for carta in self.cartas:
            exibe.append(str(carta))
        return "\n".join(exibe)


        


baralho = Baralho()
print("Novo baralho criado.")
print("Quantidade de cartas no baralho:", len(baralho.cartas))

baralho.embaralhar()
print("Baralho embaralhado.")

print(baralho)