r, c = list(map(int, input().split()))

board = [input() for _ in range(r)]

parent = [i for i in range(r * c)]


def find(n):
    out = n

    while out != parent[out]:
        out = parent[out]

    return out


def union(a, b):
    parent[find(a)] = find(b)


unionable = ["L", "C"]

for i in range(r):
    for j in range(c):
        if board[i][j] in unionable:
            if i + 1 < r and board[i + 1][j] in unionable:
                union((i * c + j), ((i + 1) * c + j))
            if j + 1 < c and board[i][j + 1] in unionable:
                union((i * c + j), (i * c + j + 1))

ls = set()

for i in range(r):
    for j in range(c):
        if board[i][j] == "L":
            ls.add(find(i * c + j))

# print(ls)
print(len(ls))
