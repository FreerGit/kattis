from collections import defaultdict


# n  = map(int, input().split())
n = int(input())

print(n * 45, "ml gin")
print(n * 30, "ml fresh lemon juice")
print(n * 10, "ml simple syrup")
if n > 1:
    print(n, "slices of lemon")
else:
    print(n, "slice of lemon")

