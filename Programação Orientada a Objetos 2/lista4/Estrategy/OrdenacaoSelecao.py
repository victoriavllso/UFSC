from Ordenacao import Ordenacao

class OrdenacaoSelecao(Ordenacao):
    def __init__(self, vetor: []):
        super().__init__(vetor)

    def ordenar(self):
        n = len(self.vetor)

        for i in range(n):
            primeiro = i

            for j in range(i+1, n):
                if self.vetor[primeiro] > self.vetor[j]:
                    primeiro = j
            self.vetor[i], self.vetor[primeiro] = self.vetor[primeiro], self.vetor[i]
        print(f'Resultado da ordenação por seleção: {self.vetor}')
     

        


