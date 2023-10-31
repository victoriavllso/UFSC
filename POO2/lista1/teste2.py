import numpy as np
import matplotlib.pyplot as plt

class Polynomial:
    def __init__(self, coefficients):
        self.coefficients = coefficients

    def degree(self):
        return len(self.coefficients) - 1

    def evaluate(self, x):
        result = 0
        for i, coef in enumerate(self.coefficients):
            result += coef * (x ** i)
        return result

    def __add__(self, other):
        new_coeffs = []
        max_degree = max(self.degree(), other.degree())
        for i in range(max_degree + 1):
            if i<=self.degree():
                coef1 = self.coefficients[i] if i <= self.degree() else 0
                coef2 = other.coefficients[i] if i <= other.degree() else 0
            new_coeffs.append(coef1 + coef2)
        return Polynomial(new_coeffs)

    def __mul__(self, other):
        new_coeffs = [0] * (self.degree() + other.degree() + 1)
        for i in range(self.degree() + 1):
            for j in range(other.degree() + 1):
                new_coeffs[i + j] += self.coefficients[i] * other.coefficients[j]
        return Polynomial(new_coeffs)

    def plot(self, x_range):
        x_vals = np.linspace(x_range[0], x_range[1], 400)
        y_vals = [self.evaluate(x) for x in x_vals]
        plt.plot(x_vals, y_vals)
        plt.xlabel('x')
        plt.ylabel('f(x)')
        plt.title('Polynomial Plot')
        plt.grid(True)
        plt.show()

# Exemplo de uso
coefficients1 = [2,-2,5]  # Representa o polinômio 1 - 2*x + 3*x^2
coefficients2 = [2,-5,2]  # Representa o polinômio 2 - x - x^2

poly1 = Polynomial(coefficients1)
poly2 = Polynomial(coefficients2)

print("Grau do polinômio 1:", poly1.degree())
print("Resultado de f(2) para o polinômio 1:", poly1.evaluate(2))

sum_poly = poly1 + poly2
print("Soma dos polinômios 1 e 2:", sum_poly.coefficients)

mul_poly = poly1 * poly2
print("Multiplicação dos polinômios 1 e 2:", mul_poly.coefficients)

poly1.plot((-5, 5))  # Plota o polinômio 1 no intervalo de -5 a 5
