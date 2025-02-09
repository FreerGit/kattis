def is_o(matrix, x, y, r, c):
    return 0 <= x < r and 0 <= y < c and matrix[x][y] == 'O'

def check_surrounding(matrix, x, y, r, c):
    if matrix[x][y] != '0':
        return False
    
    return (is_o(matrix, x-1, y, r, c) and
            is_o(matrix, x+1, y, r, c) and
            is_o(matrix, x-1, y+1, r, c) and
            is_o(matrix, x, y+1, r, c) and
            is_o(matrix, x+1, y+1, r, c) and
            is_o(matrix, x-1, y-1, r, c) and
            is_o(matrix, x, y-1, r, c) and
            is_o(matrix, x+1, y-1, r, c))

r, c = map(int, input().split())

matrix = [input().strip() for _ in range(r)]

tot = 0
last_x, last_y = -1, -1 

for i in range(1, r-1):
    for j in range(1, c-1):  
        if matrix[i][j] == '0' and check_surrounding(matrix, i, j, r, c):
            tot += 1
            last_x, last_y = i + 1, j + 1  

# Output the result
if tot == 0:
    print("Oh no!")
elif tot == 1:
    print(last_x, last_y)
else:
    print(f"Oh no! {tot} locations")
