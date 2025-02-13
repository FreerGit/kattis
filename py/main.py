import math
from collections import defaultdict

# a,b = map(int, input().split())

# Read input
n = int(input()) 
answers = input()

adrian_pattern = "ABC"  
bruno_pattern = "BABC"  
goran_pattern = "CCAABB"  

def count_correct(pattern, answers):
    pattern_length = len(pattern)
    count = 0 
    for i in range(len(answers)):
        if answers[i] == pattern[i % pattern_length]:
            count += 1
    return count

scores = {
    "Adrian": count_correct(adrian_pattern, answers),
    "Bruno": count_correct(bruno_pattern, answers),
    "Goran": count_correct(goran_pattern, answers)
}

max_score = max(scores.values())

winners = [name for name, score in scores.items() if score == max_score]

print(max_score)
for winner in sorted(winners): 
    print(winner)
