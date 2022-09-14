
with open("./result.txt") as f:
    text = f.read()

s = text.split()
for i in range(9):
    print(s[i * 51 + 26]+"," + s[i * 51 + 35])

