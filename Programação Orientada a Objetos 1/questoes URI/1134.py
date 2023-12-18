alcool = 0
gasolina = 0
diesel = 0
while True:
    n = int(input())
    if n == 1: #se for alcool
        alcool += 1
    elif n == 2:  #se for gasolina
        gasolina += 1
    elif n == 3: #se for diesel
        diesel += 1
    elif n == 4:
        break
print("MUITO OBRIGADO")
print("Alcool: %d"%(alcool))
print("Gasolina: %d"%(gasolina))
print("Diesel: %d"%(diesel))
