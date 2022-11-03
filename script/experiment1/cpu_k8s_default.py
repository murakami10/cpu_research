
with open("cpu.txt") as f:
    text = f.read()

s = text.split()

for i in range(3):
    print(s[i * 30 + 24]+","+s[i * 30 + 28])