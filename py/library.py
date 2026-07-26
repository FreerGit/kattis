n, carry = list(map(int, input().split()))

books = []
for _ in range(n):
    books.append(int(input()))

pos = sorted([x for x in books if x > 0])
neg = sorted([abs(x) for x in books if x < 0])

steps = 0
farthest = 0

for lst in (pos, neg):
    if lst:
        farthest = max(farthest, lst[-1])
    while lst:
        steps += lst[-1] * 2
        lst = lst[:-carry]

print(steps - farthest)