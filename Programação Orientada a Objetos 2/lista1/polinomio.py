'''Crie uma classe que modela um polinômio do tipo c0 + c1*x + c2*x^2 + … + cN*x^N . Os
usuários serão estudantes de engenharia e ciências da computação que querem resolver
exercícios de álgebra. A entrada são os N coeficientes em ordem crescente de potência. Os
usuários precisarão acessar o grau do polinômio, avaliar o resultado para dado valor de x,
somar e multiplicar dois polinômios.
--- Desafio: Implemente um método que plota o polinômio para um dado intervalo de entrada.

'''

import matplotlib.pyplot as plt
import numpy as np

class Modelagem():
    def __init__(self,coeficientes: []):
        self.coeficientes = coeficientes


    def acessar_grau(self):
        return len(self.coeficientes) - 1

    def valor_funcao(self,valor):
        result = 0
        for i, coef in enumerate(self.coeficientes):
            result += coef*valor**i
        return result

        

    def soma(self,outro_polinomio):
        soma = []
        grau_max = max(self.acessar_grau(),outro_polinomio.acessar_grau())

        for i in range(grau_max +1): 
            if i<=self.acessar_grau():
                coeficiente1 = self.coeficientes[i]
            else:
                coeficiente1 = 0
            if i<=outro_polinomio.acessar_grau():
                coeficiente2 = outro_polinomio.coeficientes[i]
            else:
                coeficiente2 = 0
        
            soma.append(coeficiente1+coeficiente2)
        return soma 


    def multiplicar(self, outro_polinomio):
        multi = np.polymul(self.coeficientes, outro_polinomio.coeficientes)
        return list(multi)


    def plot(self,intervalo_x):
        intervalo_x = np.linspace(intervalo_x[0],intervalo_x[1],300)
        intervalo_y = []
        for x in intervalo_x:
            intervalo_y.append(self.valor_funcao(x))

        plt.plot(intervalo_x,intervalo_y)
        plt.title("Gráfico do polinômio")
        plt.xlabel("Valores de x")
        plt.ylabel("Valores de y")
        plt.show()


   
pol1 = Modelagem([5,-2,5])
pol2 = Modelagem([2,-5,2])
vx = int(input("Digite um valor inteiro para x: "))
m1 = pol1.multiplicar(pol2)
som = pol1.soma(pol2)
grau1 = pol1.acessar_grau()
grau2 = pol2.acessar_grau()
valorx = pol1.valor_funcao(vx)
pol1.plot((-5,5))
pol2.plot((-2,2))

print(f"Multiplicação dos polinômios: {m1}")
print(f"Soma dos polinômios: {som}")
print(f"O grau do polinômio 1 é: {grau1}")
print(f"O grau do polinômio 2 é: {grau2}")
print(f"O valor da função com x = {vx} é: {valorx}")

'''   def multiplicar_polinomios(self, outro_polinomio):
        grau1 = self.acessar_grau()
        grau2 = outro_polinomio.acessar_grau()
        resultado = [0] * (grau1 + grau2 + 1)

        for i in range(grau1 + 1):
            for j in range(grau2 + 1):
                resultado[i + j] += self.coeficientes[i] * outro_polinomio.coeficientes[j]

        return resultado'''