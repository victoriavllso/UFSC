n, d, v = input().split()
n, d, v = int(n), int(d), int(v)
n2, d2, v2 = input().split()
n2, d2, v2 = int(n2), int(d2), int(v2)

if (d/v)<(d2/v2):
    print(n)
else:
    print(n2)
