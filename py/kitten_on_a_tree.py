import math
from collections import defaultdict
from collections import deque
from collections import Counter

begin = int(input())

tree = defaultdict(int)

while True:
    path = list(map(int, input().split()))
    if path == [-1]:
        break

    parent = path[0]
    for child in path[1:]:
        tree[child] = parent


path_taken = []
current = begin

while current in tree:
    path_taken.append(current)
    current = tree[current]

path_taken.append(current)
print(" ".join(map(str,path_taken)))

