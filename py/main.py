a = int(input())

nums = map(int, input().split())
rolls = [(i + j) for i in range(1,7) for j in range(1,7)]
possible_outcomes = len(rolls)
hit = 0
for num in nums:
    hit += rolls.count(num)

print( hit / possible_outcomes )    

