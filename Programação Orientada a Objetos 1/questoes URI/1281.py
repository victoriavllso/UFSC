dic= {} 

idas = int(input())


for _ in range(idas):
    qnt_disponivel = int(input())
    
    for _ in range(qnt_disponivel):
        produto, valor = input().split()
        dic[produto] = float(valor) #dic[preco] = 2.19, 3.10,2.80,2.73
    
    qnt_deseja = int(input()) #3
    valor_gasto = 0
    for i in range(qnt_deseja):
        produto2, qnt_comprou = input().split()
        qnt_comprou = int(qnt_comprou)
        
        valor_gasto += dic[produto2] *qnt_comprou
        
    print('R$ %.2f'%(valor_gasto))