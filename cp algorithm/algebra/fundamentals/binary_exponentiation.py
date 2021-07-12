""""
for the theory you can refer 
https://cp-algorithms.com/algebra/binary-exp.html

Motivation :- here we are calculate the power of a number effectively

Naive approch :- A**N = A*A*A*A*A*...N
efficient approch is to break the power into binary form then we can calculate them much faster then this
i.e A**12 (12 = 1100) = (A**8)*(A**4) 

now we can get --> A ** 1 = A
                   (A ** 1)**2 = A**2
                   (A ** 2)**2 = A**4
                   (A ** 4) ** 2 = A ** 8
so here we will be able to calculated A**8 only in 4 multiplication here we used our previous known result very smartly to reduce
the time and that will make huge run time diff in both algo
i.e in naive approcah our time complexity will be O(n)
but in efficient approch our time complexity will be o(logn)

exmaple:-
let say we wanted to calculate 3^12
12 = 1100
so we need 3 to the power upto 8 and we will be able to get 3^12 by mutiplying 3^8 * 3^4 * 1 * 1
similarly for 3^10 
10 = 1010 
3^8 * 1 * 3^2 * 1
did you see any pattern...
so when you see 0 just multiply it by 1
or else mutilply it with the number ^ (2 ^ n) where n = position of that number
also, this 2^n pattern we have in one go.
i.e in first iteration it will be = 3^1 = 3
                                    3^2 = 3^1 * 3^ 1 = 3*3 = 9
                                    3^4 = 3^2 * 3^2 = 9*9 = 81 and so on

so we can have this pattern in each iteration and we will be mutlplying our result by 1 when we see a 0 in binary representation
or else we will be mutliplying with whatever number we will be having in the current pattern

"""

def binary_expo(number, power):
    result = 1
    while (power > 0):
        if (power & 1):
            result = result * number
        number = number * number
        power = power >> 1
    return result
        


        
