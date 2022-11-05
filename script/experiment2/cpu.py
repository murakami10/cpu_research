
with open("result/cpu_1.txt") as f:
    text = f.read()

s = text.split()
for i in range(19):
    print(s[i * 50 + 40][:-1]+","+s[i * 50 + 48][:-1])