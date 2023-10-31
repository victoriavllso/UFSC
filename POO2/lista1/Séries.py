'''Implemente uma classe que, implementa algumas séries matemáticas importantes: Fibonacci,
Fatorial, Fibonarial, Primo. Use recursão para Fibonacci e Fatorial.
'''
class Series():
    def __init__(self, entrada):
        self.entrada = entrada

    def fib_recursiva(self,n):

        if n == 0:
            return 0
        elif n == 1:
            return 1
        else: 
            return self.fib_recursiva(n - 1) + self.fib_recursiva(n - 2)

    def fib(self):

        if self.entrada == 0:
            return 0
        
        elif self.entrada == 1:
            return 1
        
        else:
            return self.fib_recursiva(self.entrada)
    
    def fat_recursiva(self,n):

        if n == 0 or n ==1:
            return 1
        else:
            return n* self.fat_recursiva(n-1)

    def fat(self):

        if self.entrada == 0 or self.entrada ==1:
            return 1
        else:
            return self.fat_recursiva(self.entrada)
        
    def primo(self):

        cont = 0
        for i in range(1, self.entrada+1):
            if self.entrada%i == 0:
                cont +=1
        if cont >2:
            return "Não é primo"
        else:
            return "é primo"
    def fibonarial(self):
       return self.fat(self.fib(self.entrada))


while True:       
    entrada = input("Digite um numero para calcular as séries ou digite 's' para sair: ")

    if entrada == 's':
        break

    else:
        entrada = int(entrada)

        n = Series(entrada)
        fatorial = n.fat()
        fibonacci = n.fib()
        primo = n.primo()
        fibonarial = n.fibonarial()

        print(f"Fatorial: {fatorial}")
        print(f"Fibonacci: {fibonacci}")
        print(f"Primo: {primo}")
        print(f"Fibonarial: {fibonarial}")



