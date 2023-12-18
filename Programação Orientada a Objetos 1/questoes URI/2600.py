n = int(input())

for i in range(n):
    face1 = int(input())
    face2, face3, face4, face5 = input().split()
    face2, face3, face4, face5 = int(face2), int(face3), int(face4),int(face5)
    face6 = int(input())
    faces = [face1, face2, face3, face4, face5, face6]

    if (face1+face6==7) and (face2+face4==7) and (face3+face5==7) and set(faces) == set([1, 2, 3, 4, 5, 6]):
        print("SIM")
    else:
        print("NAO")
