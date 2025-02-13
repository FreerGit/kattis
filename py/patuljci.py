import math
from collections import defaultdict

ns = [input() for _ in range(9)]
ns = list(map(int, ns))

def backtrack(ns, id, chosen):
    if len(chosen) == 7:
        if sum(chosen) == 100:
            return chosen
        return None

    if id >= len(ns):
        return None

    result = backtrack(ns, id + 1, chosen + [ns[id]])
    if result:
        return result
    
    return backtrack(ns, id + 1, chosen)


result = backtrack(ns, 0, [])

# Print the solution
for num in result:
    print(num)