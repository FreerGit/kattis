n = int(input())
names = [input().split() for _ in range(n)]

total_count = {}
for line in names:
    first = line[0]
    total_count[first] = total_count.get(first, 0) + 1

current = {}
out = []
for line in names:
    first = line[0]
    rest = line[1:] if len(line) > 1 else ""

    if total_count[first] > 1:
        current[first] = current.get(first, 0) + 1
        num = current[first]
        if rest:
            out.append(f"{first} {num}. {' '.join(rest)}")
        else:
            out.append(f"{first} {num}.")
    else:
        out.append(" ".join(line))

print("\n".join(out))
