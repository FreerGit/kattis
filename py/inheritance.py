from collections import deque

suns = int(input())

queue = deque([2, 4])
valid_numbers = []

while queue:
    num = queue.popleft()
    
    if num > suns:
        continue
    
    if suns % num == 0:
        valid_numbers.append(num)

    queue.append(num * 10 + 2)
    queue.append(num * 10 + 4)

for n in sorted(valid_numbers):
    print(n)
