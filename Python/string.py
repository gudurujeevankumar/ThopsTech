# s = "Hello Hai guys"

# print("Length",len(s))

# input_str = input("Enter your string: ")
# print("uppercase:", input_str.upper())
# print("lowercase:", input_str.lower())

# print("Is empty or not :", s.isspace())
# print("count of string without space:", len(s.replace(" ", "")))
# print("first and last character:", s[0], s[-1])
# print("reversed string:", s[::-1])

s = input("Enter a string: ")
rev = ""

for ch in s:
    rev = ch + rev
print(rev)
