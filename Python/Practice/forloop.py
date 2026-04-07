# 1) Print numbers from 5 to 15
for i in range(5, 16):
    print(i)

print("--------------")

# 2) Print multiples of 3 from 1 to 30
for i in range(3, 31, 3):
    print(i)

print("--------------")

# 3) Print numbers from 1 to 50 with a gap of 5
for i in range(1, 51, 5):
    print(i)

print("--------------")

# 4) Print the square of numbers from 1 to 10
for i in range(1, 11):
    print(i * i)

print("--------------")

# 5) Print your name 5 times
for i in range(5):
    print("Jeevan Kumar")

print("--------------")

# 6) Count how many even numbers between 1 and 100
count = 0
for i in range(1, 101):
    if i % 2 == 0:
        count += 1
print(count)

print("--------------")

# 7) Find the sum of numbers from 1 to 10
total = 0
for i in range(1, 11):
    total += i
print(total)

print("--------------")

# 8) Print numbers divisible by both 3 and 5 (1 to 50)
for i in range(1, 51):
    if i % 3 == 0 and i % 5 == 0:
        print(i)