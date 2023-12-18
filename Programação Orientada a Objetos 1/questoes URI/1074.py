n = int(input())
for i in range(n):
    x = int(input())
    if x%2==0 and x>0:
        print("EVEN POSITIVE")
    if x%2==0 and x<0:
        print("EVEN NEGATIVE")
    if x%2 !=0 and x>0:
        print("ODD POSITIVE")
    if x%2 !=0 and x<0:
        print("ODD NEGATIVE")
    if x==0:
        print("NULL")
