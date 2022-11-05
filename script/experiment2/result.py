
with open("result/result.txt") as f:
    text = f.read()

s = text.split()
for i in range(12):
    print(s[i * 51 + 42] + "," +s[i * 51 + 26][:-2]+"," + s[i * 51 + 35])

