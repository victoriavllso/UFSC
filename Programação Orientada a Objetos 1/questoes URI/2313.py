A,B,C = input().split()
A,B,C = int(A),int(B),int(C)

if (A<B+C) and (B<A+C) and (C<A+B):
    if A != B and B != C and C != A:
        print("Valido-Escaleno")
        if A * A == B *B + C * C:
            print("Retangulo: S")
        else:
            print("Retangulo: N")
    elif A == B and B == C and C == A:
        print("Valido-Equilatero")
        if A * A == B *B + C * C:
            print("Retangulo: S")
        else:
            print("Retangulo: N")
    elif (A == B and B != C) or (B == C and C != A) or (C == A and A != B):
        print("Valido-Isoceles")
        if A * A == B *B + C * C:
            print("Retangulo: S")
        else:
            print("Retangulo: N")
else:
    print("Invalido")
