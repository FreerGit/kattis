import math

names, acro = map(int, input().split())

names_acro_map = {}
for _ in range(names):
    name = input().split()
    (a,b) = name[0][0], name[1][0]
    temp_acro = a+b
    try:
        t = names_acro_map[temp_acro]
        names_acro_map[temp_acro] = t[0] + 1, t[1]
    except:
        names_acro_map[temp_acro] = (1, ' '.join(name))


for _ in range(acro):
    a = input()
    try:
        (v, n) = names_acro_map[a]
        if v > 1:
            print("ambiguous")
        else:
            print(n)
    except:
        print("nobody")