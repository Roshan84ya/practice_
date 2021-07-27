def bin_mod(x, y, z):
    a = x%z
    res = 1
    while (y > 0):
        if (y & 1):
            res = (res *a)%z
        a = (a*a)%z
        y = y>> 1
    return res
for i in range(int(input())):
    x, y, z = map(int,input().split())
    print(bin_mod(x, y, z))