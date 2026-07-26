import string

n = int(input())
for _ in range(n):
    phrase = input().lower()
    missing = [c for c in string.ascii_lowercase if c not in phrase]
    print("pangram" if not missing else "missing " + "".join(missing))