import math

class Quadrado:
    def __init__(self, lado: float):
        self.lado = lado

    def area(self):
        return self.lado * self.lado


class Retangulo:
    def __init__(self, base: float, altura: float):
        self.base = base
        self.altura = altura

    def area(self):
        return self.base * self.altura


class Circulo:
    def __init__(self, raio: float):
        self.raio = raio
 
    def area(self):
        return math.pi * self.raio**2




    tipo = input('Digite a figura:')
    fig = None
    
    if tipo == 'quadrado':
        lado = float(input('Digite o lado do quadrado: '))
        fig = Quadrado(lado)
    elif tipo == 'retangulo':
        base = float(input('Digite a base do retangulo: '))
        altura = float(input('Digite a altura do retangulo: '))
        fig = Retangulo(base, altura)
    elif tipo == 'circulo':
        raio = float(input('Digite o raio do circulo: '))
        fig = Circulo(raio)
    
    a = fig.area()
    print('Area do', tipo, ':', a)
        
main()


'''
Por quê o atributo __area deve ser privado? Isso ajuda a evitar bugs(evita que outros trechos do código causem comportamentos inesperados, como modificações diretas no atributo), facilita e manutenção do código e fornece uma interface clara e controlada para interagir com as instâncias da classe.

Quais outros atributos devem ser privados?

O método area() será usado apenas para iniciar o atributo __area e, portanto, pode ser um método privado. Você sabe como fazer isso?
Acrescente ao seu programa as funcionalidades de perímetro, diâmetro e diagonal.'''