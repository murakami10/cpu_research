import re
s = 'Socket.*?timeout \d+'

portion = "9505"
latency = "40"

cpus = []

for i in range(14):


    with open(f"result/{latency}/{portion}/cpu/cpu_{i+1}.txt") as f:
        cpu = f.read()

    c = cpu.split()
    for i in range(11):
        cpus.append([c[i * 50 + 40][:-1], c[i * 50 + 48][:-1]])




with open(f"result/{latency}/{portion}/result/input.txt") as f:
    inp = f.read()

results = []

for i, value in enumerate(inp.split("----------------------------------------------------------------------------")):
    if i == 14:
        break
    with open(f"result/{latency}/{portion}/result/result_{i + 1}.txt", mode="w") as f:
        f.write(value)

    t = re.sub(s, '', value).split()[2:]
    for i in range(8):
        results.append([t[i * 50 + 41], t[i * 50 + 25][:-2], t[i * 50 + 34]])



for i in range(11):
    if i < 8:
        print((i+9)*10, ",", ','.join(cpus[i]), ",", ','.join(results[i]), ',,',          (i+9)*10, ",", ','.join(cpus[i + 11]),",", ','.join(results[i+8]), ',,',           (i+9)*10, ",", ','.join(cpus[i + 22]),",", ','.join(results[i+16]), ',,',               (i+9)*10, ",", ','.join(cpus[i + 33]),",", ','.join(results[i+24]), ',,',    (i+9)*10, ",", ','.join(cpus[i + 44]),",", ','.join(results[i+32]), ',,',          (i+9)*10, ",", ','.join(cpus[i + 55]),",", ','.join(results[i+40]), ',,',              (i+9)*10, ",", ','.join(cpus[i + 66]),",", ','.join(results[i+48]), ',,',            (i+9)*10, ",", ','.join(cpus[i + 77]),",", ','.join(results[i+56]), ',,',             (i+9)*10, ",", ','.join(cpus[i + 88]),",", ','.join(results[i+64]), ',,',         (i+9)*10, ",", ','.join(cpus[i + 99]),",", ','.join(results[i+72]), ',,',          (i+9)*10, ",", ','.join(cpus[i + 110]),",", ','.join(results[i+80]), ',,',        (i+9)*10, ",", ','.join(cpus[i + 121]),",", ','.join(results[i+88]), ',,',      (i+9)*10, ",", ','.join(cpus[i + 132]),",", ','.join(results[i+96]), ',,',    (i+9)*10, ",", ','.join(cpus[i + 143]),",", ','.join(results[i+104]), ',,',)
    else:
        print((i+9)*10, ",", ','.join(cpus[i]), ",,,,,",        (i+9)*10, ",", ','.join(cpus[i + 11]), ",,,,,",      (i+9)*10, ",", ','.join(cpus[i + 22]), ",,,,,",          (i+9)*10, ",", ','.join(cpus[i + 33]), ",,,,,",                  (i+9)*10, ",", ','.join(cpus[i + 44]), ",,,,,",                    (i+9)*10, ",", ','.join(cpus[i + 55]), ",,,,,",                    (i+9)*10, ",", ','.join(cpus[i + 66]), ",,,,,",                   (i+9)*10, ",", ','.join(cpus[i + 77]), ",,,,,",                  (i+9)*10, ",", ','.join(cpus[i + 88]), ",,,,,",                   (i+9)*10, ",", ','.join(cpus[i + 99]), ",,,,,",                        (i+9)*10, ",", ','.join(cpus[i + 110]), ",,,,,",                       (i+9)*10, ",", ','.join(cpus[i + 121]), ",,,,,",                     (i+9)*10, ",", ','.join(cpus[i + 132]), ",,,,,",                     (i+9)*10, ",", ','.join(cpus[i + 143]), ",,,,,",              )
