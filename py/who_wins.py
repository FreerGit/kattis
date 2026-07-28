from collections import deque

board = [input().split() for _ in range(3)]
print(board)


def check_hor(player):
    for row in board:
        if all(x == player for x in row):
            return player


def check_vert(player):
    for i in range(3):
        if board[0][i] == player and board[1][i] == player and board[2][i] == player:
            return player


def check_diag(player):
    if board[0][0] == player and board[1][1] == player and board[2][2] == player:
        return player
    if board[2][0] == player and board[1][1] == player and board[0][2] == player:
        return player


if check_hor("O") or check_vert("O") or check_diag("O"):
    print("Abdullah har vunnit")
elif check_hor("X") or check_vert("X") or check_diag("X"):
    print("Johan har vunnit")
else:
    print("ingen har vunnit")
