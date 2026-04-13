# write a program to print most frequency of a number 
# least repeated number

nums = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5]

freq = {}

for num in nums:
    if num in freq:
        freq[num] += 1
    else:
        freq[num] = 1

print("Frequency:", freq)

max_num = max(freq, key=freq.get)
min_num = min(freq, key=freq.get)

print("Most frequent number:", max_num)
print("Least frequent number:", min_num)