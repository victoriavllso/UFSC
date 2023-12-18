n = int(input())
quebrou = 0
for i in range(n):
    L, C = input().split()
    L, C = int(L), int(C)
    if L>C:
        quebrou += C
print(quebrou)
        
    
