# n= 5
# num = " "
# for i in range (1,n):
#     num += str(i)
#     print(num,end="")
#     print(" " * (n-i),end="")
#     print(num)

n = 4

for i in range(1, n + 1):

    # Left side (increasing numbers)
    for j in range(1, i + 1):
        print(j, end=" ")

    # Spaces
    for j in range(2 * (n - i)):
        print("  ", end="")

    # Right side (decreasing numbers)
    for j in range(i, 0, -1):
        print(j, end=" ")

    print()

