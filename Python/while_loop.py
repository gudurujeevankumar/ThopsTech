# n = int(input())
# last = 0
# su = 0
# while n != 0:
#     last = n % 10
#     su += last
#     n //= 10
# i = 1
# count = 0
# while i <= su:
#     if su % i == 0:
#         count += 1
#     i += 1
# if count == 2:
#     print("Yes")
# else:
#     print("No")

# n = int(input())
# last = 0
# count = 0
# m = n
# o = m
# while n != 0:
#     last = n % 10
#     count += 1
#     n //=10

# summ = 0
# la = 0
# while m != 0:
#     la = m % 10 
#     summ += (la**count)
#     m //=10

# if o == summ:
#     print("Yes")
# else:
#     print("No")

import random
choice = random.choice(["song","dance","dialogue"])
print(choice)