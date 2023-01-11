import re
s = 'Socket.*?timeout \d+'

latency = "10-slow"
portion = "dynamic"

cpus = []

with open(f"result/{latency}/{portion}/cpu.txt") as f:
    cpu = f.read()

c = cpu.split()
for i in range(21):
    cpus.append([c[i * 50 + 40][:-1], c[i * 50 + 48][:-1]])


with open(f"result/{latency}/{portion}/input.txt") as f:
    inp = f.read()

results = []

t = re.sub(s, '', inp).split()[2:]
for i in range(21):
    results.append([t[i * 50 + 39], t[i * 50 + 23][:-2], t[i * 50 + 32]])

for i in range(21):
    print(cpus[i][0]+","+cpus[i][1]+","+results[i][0]+","+results[i][1]+","+results[i][2])
