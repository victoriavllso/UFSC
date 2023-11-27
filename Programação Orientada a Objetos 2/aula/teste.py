class Alterna():
    def __init__(self, vet1: list, vet2: list) -> None:
        self.vet1 = vet1
        self.vet2 = vet2

    def intercala(self):
        vet3 = []
        for i in range(len(self.vet1)):
            vet3.append(self.vet1[i])
            vet3.append(self.vet2[i])
        return vet3
    
entrada1 = input("Digite os valores do vetor 1: ")
vet1 = list(map(int, entrada1.split()))

entrada2 = input("Digite os valores do vetor 2: ")
vet2 = list(map(int, entrada2.split()))

objeto = Alterna(vet1, vet2)
valor_intercalado = objeto.intercala()

print(f"Os vetores intercalados são: {valor_intercalado}")
