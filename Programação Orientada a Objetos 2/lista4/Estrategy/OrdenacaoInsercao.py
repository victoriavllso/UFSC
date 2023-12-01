from Ordenacao import Ordenacao

class OrdenacaoInsercao(Ordenacao):
    def __init__(self, vetor: []):
        super().__init__(vetor)

    def ordenar(self):
        n = len(self.vetor) #3
   
        for i in range(1,n):

            eleito = self.vetor[i] #2
            j = i-1 #caso inicial j= 0 (primeiro elemento 3)

            while j>=0 and eleito < self.vetor[j]:
                self.vetor[j+1] = self.vetor[j]
                j-=1
            self.vetor[j+1] = eleito
        print(f'Resultado da ordenação por inserção: {self.vetor}')
