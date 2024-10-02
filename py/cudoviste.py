c,r =map(int, input().split())

squares = []
for j in range(c):
    squares.append([c for c in input()]) 

cars = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0}

tile = []
for i in range(r):
    for j in range(c):
        if not j + 1 >= r and not i + 1 >= c:
            tile.append(squares[i][j])
            tile.append(squares[i][j + 1])
            tile.append(squares[i + 1][j])
            tile.append(squares[i + 1][j + 1])
            if not tile.__contains__('#'):
                cars[tile.count('X')] += 1
            tile = []

for k in cars.values():
    print(k)