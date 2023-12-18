def mdc(a, b):
    if b == 0:
        print(a)
    else:
        mdc(b, a % b)

n = int(input())

for i in range(n):
    f1,f2 = map(int,input().split())
    mdc(f1,f2)
