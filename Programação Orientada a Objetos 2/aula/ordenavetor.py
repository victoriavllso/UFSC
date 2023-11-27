"""Universidade Federal de Santa Catarina.
   CTC - Centro Tecnologico - http://ctc.ufsc.br
   INE - Departamento de Informatica e Estatistica - http://inf.ufsc.br
"""

class Ordenacao():

    def __init__(self, array_para_ordenar:[]):
        """Recebe o array com o conteudo a ser ordenado"""
        self.array_para_ordenar = array_para_ordenar

    def ordena(self):
        """Realiza a ordenacao do conteudo do array recebido no construtor"""
        n = len(self.array_para_ordenar)
        for i in range(1, n):
            a = self.array_para_ordenar[i]  # Elemento a ser inserido em sua posição correta
            b = i - 1
            while b >= 0 and a < self.array_para_ordenar[b]:
                self.array_para_ordenar[b + 1] = self.array_para_ordenar[b]
                b -= 1
            self.array_para_ordenar[b + 1] = a

    def toString(self):
        """Converte o conteudo do array em String formatado
           Exemplo: 
           Para o conteudo do array: [1,2,3,4,5]
           Retorna: "1,2,3,4,5"
           @return String com o conteudo do array formatado
        """
        formatted_array = ','.join(map(str, self.array_para_ordenar))
        return formatted_array

# Função principal
def main():
    entrada = input("Digite uma sequência de números inteiros separados por espaço: ")
    numeros = list(map(int, entrada.split()))
    
    ordenador = Ordenacao(numeros)
    ordenador.ordena()
    saida = ordenador.toString()
    
    print("Saída:", saida)

if __name__ == "__main__":
    main()
