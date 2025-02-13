import math
from collections import defaultdict

ring_count = int(input())

rings = list(map(int, input().split()))

first = rings[0]

others = rings[1:]


for r in others:
    gcd_value = math.gcd(first, r)
    num = first // gcd_value
    denom = r // gcd_value
    print(f"{num}/{denom}")    



