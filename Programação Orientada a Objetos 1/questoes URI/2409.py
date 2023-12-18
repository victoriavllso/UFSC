A,B,C = input().split()
A,B,C= int(A), int(B), int(C)
H,L = input().split()
H,L = int(H), int(L)
if 1 <= (A and B and C) <= 300 and 1 <= (H and L) <= 250:
    if A <= H and B <= L: #colchão em pé e reto
        print('S')
    elif A <= H and C <= L: #em pé e de lado
        print('S')
    elif B <= H and A <= L:
        print('S')
    elif B <= H and C <= L:
        print('S')
    elif C <= H and A <= L:
        print('S')
    elif C <= H and B <= L:
        print('S')
    else:
        print('N')
else:
    print('error')
