import math

class Operação:

    def __init__(self, vetor1:[], vetor2:[]):
        self.vetor1 = vetor1
        self.vetor2 = vetor2
    
    def soma(self):
        if len(self.vetor1) != len(self.vetor2):
            print("Não é possível somar vetores com tamanhos diferentes. Tente novamente.")
        else:
            soma = []
            for i in range(len(self.vetor1)):
                soma.append(self.vetor1[i] + self.vetor2[i])
            print(soma)

    def produto_escalar(self):
        if len(self.vetor1) != len(self.vetor2):
            print("Não é possível somar vetores com tamanhos diferentes. Tente novamente.")
        else: 
            prod_escalar = 0
            for i in range(len(self.vetor1)):
                prod_escalar += self.vetor1[i] * self.vetor2[i] 

            print(prod_escalar)
            
    def produto_um_escalar(self):
        if len(self.vetor1) != len(self.vetor2):
            print("Não é possível somar vetores com tamanhos diferentes. Tente novamente.")
        else:
            sel = input("Se deseja multiplicar o vetor 1 digite vet1, caso contrário, vet2: ")
            numero = int(input("Digite o número multiplicador: "))
            prod_um_escalar = []
            if sel == "vet1":
                for i in range(len(self.vetor1)):
                    prod_um_escalar.append(self.vetor1[i]*numero)
            else:
                for i in range(len(self.vetor2)):
                    prod_um_escalar.append(self.vetor2[i]*numero)
            print(prod_um_escalar)

    def norma_max(self):
        if len(self.vetor1) != len(self.vetor2):
            print("Não é possível somar vetores com tamanhos diferentes. Tente novamente.")
        else:
            maximo1 = max(self.vetor1)
            maximo2 = max(self.vetor2)

            print("A norma máxima do primeiro vetor  é %d, enquando do segundo é %d"%(maximo1,maximo2))
            

    def norma_dois(self):
        if len(self.vetor1) != len(self.vetor2):
            print("Não é possível somar vetores com tamanhos diferentes. Tente novamente.")
        else:

            soma1 = soma2 = 0

            for i in range(len(self.vetor1)):
                soma1 += self.vetor1[i]**2
                soma2 += self.vetor2[i]**2

            soma1 = math.sqrt(soma1)
            soma2 = math.sqrt(soma2)

            print("A norma dois do primeiro vetor é %.2f, enquanto do segundo é %.2f"%(soma1, soma2))

        

def main():

    entrada1 = input("Digite os valores para o primeiro vetor: ")
    vet1 = list(map(int, entrada1.split()))

    entrada2 = input("Digite os valores para o segundo vetor: ")
    vet2 = list(map(int, entrada2.split()))

    recebe = Operação(vet1, vet2)
    while True:
        sel = input("Digite a operação que deseja fazer (soma, produto interno, produto por um escalar, norma máxima ou norma dois). Se quiser encerrar o programa, digite 0: ")
        if sel == 0:
            break
        if sel == "soma":
            recebe.soma()
        elif sel == "produto interno":
            recebe.produto_escalar()
        elif sel == "produto por um escalar":
            recebe.produto_um_escalar()
        elif sel == "norma maxima":
            recebe.norma_max()
        else:
            recebe.norma_dois()


if __name__ == "__main__":
    main()
