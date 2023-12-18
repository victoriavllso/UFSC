def iccanobif(a):
    #vetor = [0] * a
    vetor = [1, 1] + [0] * (a - 2)
    vetor[-1] = 1
    vetor[-2] = 1
    for i in range(3, a + 1): #como os dois ultimos são sempre 1, começo o loop a partir do terceiro item
        vetor[-i] = vetor[-i + 1] + vetor[-i + 2]
    if a == 1:
        print('1')
    else:
        print(" ".join(str(termo) for termo in vetor))

n = int(input())
iccanobif(n)
