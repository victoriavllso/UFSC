def contador(lista):
    ocorrencias = {}
    for numero in lista:
        if numero in ocorrencias:
            ocorrencias[numero] += 1
        else:
            ocorrencias[numero] = 1
    for numero in lista:    
        print('%d aparece %d vez(es)'%(numero,ocorrencias[numero]))


valores = []

n = int(input())

for i in range(n):
    numero = int(input())
    valores.append(numero)
valores.sort()
contador(valores)
    