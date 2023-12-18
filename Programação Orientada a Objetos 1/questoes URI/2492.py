while True:
    n = int(input())
    if n == 0:
        break
    ilha = set()
    primeiro_elemento = set()
    segundo_elemento = set()
    is_function = True
    is_invertible = True
    for _ in range(n):
        line = input().split()
        ilha.add(line[0])
        ilha.add(line[2])
        if line[0] in primeiro_elemento: #se o x já estiver ali antes, então não é uma função
            is_function = False
        else:
            primeiro_elemento.add(line[0])
        if line[2] in segundo_elemento: #se o segundo elemento já estiver ali antes, então não é inversível
            is_invertible = False
        else:
            segundo_elemento.add(line[2])
    if not is_function:
        print("Not a function.")
    elif not is_invertible:
        print("Not invertible.")
    else:
        print("Invertible.")
