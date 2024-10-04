n = int(input())

todo = list(map(int, input().split()))
learned = list(map(int, input().split()))

for t in todo:
    if not learned.__contains__(t):
        print(t)