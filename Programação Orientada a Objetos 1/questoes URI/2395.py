A, B, C = input().split()
A, B, C = int(A), int(B), int(C)
X, Y, Z = input().split()
X, Y, Z = int(X), int(Y), int(Z)

quantidade = (X//A) * (Y//B) *(Z//C)
print("%.f"%(quantidade))
