def bigmod(x, y, z):
    a = x%z
    res = 1
    while (y > 0):
        if (y & 1):
            res = (res *a)%z
        a = (a*a)%z
        y = y>> 1
    return res
while True:
    try:
        a = int(input())
        b = int(input())
        c = int(input())
        input()
        print(bigmod(a, b, c))
    except(EOFError):
        break
