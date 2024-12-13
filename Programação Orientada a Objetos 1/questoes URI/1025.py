# -*- coding: utf-8 -*-

'''
Escreva a sua solução aqui
Code your solution here
Escriba su solución aquí
'''

k = 1
while True:
    n, q = input().split()
    n, q = int(n), int(q)
    stack = []
    stack_consulta = []
    k+=1
    if n == 0 and q ==0:
        break
    for _ in range(0,n): #recebe os N marmores e coloca na pilha
        numero_marmore = int(input())
        stack.append(numero_marmore)
        
    
    for _ in range(0,q):
        cons = int(input())
        stack_consulta.append(cons)
        
    
    print(f'CASE# {k}:')
    # fazer a consulta:
    for i in range(len(stack_consulta)):
        atual = stack_consulta(1-i) #pega o elemento da pilha
        for j in range(len(stack)):
            if stack[j] == atual:
                print(f'{atual} found at {j}')
            else:
                print(f'{atual} not found')
                
        stack_consulta.pop() # remove o elemento da pilha
                
            
