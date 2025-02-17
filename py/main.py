import math
from collections import defaultdict
from collections import deque

from collections import Counter

def fib(n):
    if n < 2:
        return n

    return fib(n - 1) + fib(n - 2)

# 0 1 1 2 3 5

def fib_i(n):
    if n < 2:
        return n

    a = 0
    b = 1
    for _ in range(2, n + 1):
        res = a + b

        a = b
        b = res


    return b

print(fib(3))
print(fib(4))
print(fib(5))
print(fib(6))
print(" ")
print(fib_i(3))
print(fib_i(4))
print(fib_i(5))
print(fib_i(6))