
with open("./cpu.txt") as f:
    text = f.read()

s = text.split()
for i in range(9):
    print(s[i * 50 + 40]+","+s[i * 50 + 48])