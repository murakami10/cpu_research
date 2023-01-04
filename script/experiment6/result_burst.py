import re
s = 'Socket.*?timeout \d+'

latency = "10"

cpus = []

with open(f"result/{latency}/cpu.txt") as f:
    cpu = f.read()

c = cpu.split()
for i in range(12):
    cpus.append([c[i * 50 + 40][:-1], c[i * 50 + 48][:-1]])


with open(f"result/{latency}/input.txt") as f:
    inp = f.read()

results = []

t = re.sub(s, '', inp).split()[2:]
for i in range(12):
    results.append([t[i * 50 + 39], t[i * 50 + 23][:-2], t[i * 50 + 32]])

for i in range(12):
    print(cpus[i][0]+","+cpus[i][1]+","+results[i][0]+","+results[i][1]+","+results[i][2])
