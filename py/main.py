import math
from collections import defaultdict
from collections import deque
from collections import Counter
from itertools import permutations

n = int(input())

def get_digits(n):
    digits = []
    current = n
    left = current
    while n:
        digits.append(n % 10)
        n //= 10
        
    return digits

nums = get_digits(n)
possible = list(permutations(nums))

m = n + 1
larger = []
for p in possible:
    perm = int(''.join(list(map(str, p))))
    if perm > n:
        larger.append(perm)


if len(larger) > 0:
    print(min(larger))
else:
    print(0)