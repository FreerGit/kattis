m = int(input())

flights: list[list[int]] = [list(map(int, input().split())) for _ in range(m)]

connections = []
acc = 0

for i in range(m):
    for j in range(len(flights[i])):
        cost = flights[i][j]
        if cost > 0:
            acc += 1
            connections.append(f"{i + 1} {j + 1} {cost}")

print(acc)
print('\n'.join(connections))