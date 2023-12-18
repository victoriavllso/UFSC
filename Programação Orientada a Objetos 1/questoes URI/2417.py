cv,ce,cs,fv,fe,fs = input().split()
cv,ce,cs,fv,fe,fs = int(cv), int(ce), int(cs), int(fv), int(fe), int(fs)

pontosc = 3*cv + 1*ce
pontosf= 3*fv + 1*fe

if pontosc > pontosf:
    print("C")
if pontosf > pontosc:
    print("F")
if pontosc == pontosf:
    if cs>fs:
        print("C")
    if fs>cs:
        print("F")
    if fs == cs:
        print("=")
