from collections import defaultdict


# n  = map(int, input().split())
n = int(input())

m = 0
l = 10 ** 5
for _ in range(n):
    cost = int(input())
    m = max(m, cost)
    l = min(cost, l)

final_cost =  l - (m / 2)

print(max(0, int(final_cost)))

