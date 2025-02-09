import math
from collections import defaultdict

_ = input()

nums = map(int, input().split())

output = []

nums = sorted(nums)

sections = len(nums) // 3

output.extend(nums[sections:sections +sections])
output.extend(nums[:sections])
output.extend(nums[sections + sections:])

print(' '.join(map(str, output)))