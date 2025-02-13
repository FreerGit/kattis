import math
from collections import defaultdict

# a,b = map(int, input().split())

label = int(input())
cases = int(input())

total_time = 0
has_box = label
for _ in range(cases):
    
    t, answer = input().split()
    t = int(t)
    total_time += t

    if answer == "T" and total_time < 210:
        has_box = (has_box % 8) + 1


print(has_box)