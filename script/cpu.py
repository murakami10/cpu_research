
with open("./result/cpu.txt") as f:
    text = f.read()

s = text.split()
for i in range(14):
    print(s[i * 50 + 40][:-1]+","+s[i * 50 + 48][:-1])