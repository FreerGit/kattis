m = int(input())

rects = []
circles = []

def within_box(rect, x, y):
    return (rect[0] <= x and x <= rect[2]) and (rect[1] <= y and y <= rect[3])

def within_circle(circle, x, y):
    return (x - circle[0]) ** 2 + (y - circle[1]) ** 2 <= circle[2] ** 2

for _ in range(m):
    l = input().split()
    shape = l[0]
    if shape == "circle":
        circle = list(map(int, l[1:]))
        circles.append(circle)
    if shape == "rectangle":
        rect = list(map(int, l[1:]))
        rects.append(rect)

n = int(input())

tot = 0
for _ in range(n):
    x,y = map(int, input().split())
    for r in rects:
        if within_box(r,x,y): tot += 1

    for c in circles:
        if within_circle(c,x,y): tot +=1

    print(tot)
    tot = 0