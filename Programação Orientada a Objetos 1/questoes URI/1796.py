q = int(input()) #qnt de pessoas q vao participar da pesquisa
v = input().split()
satisfeito = 0
insatisfeito = 0
for i in range(0,q):
    v[i] = int(v[i])
    if v[i] == 0:
        satisfeito += 1
    elif v[i] == 1:
        insatisfeito += 1
if satisfeito > insatisfeito:
    print("Y")
else:
    print("N")
