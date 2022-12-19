import re
s = 'Socket.*?timeout \d+'


latency = "5"
portions = ["9505", "9010", "8515", "8020", "7525", "7030", "6535", "6040", "5545", "5050", "00100"]
client = "10"

best_avg = 0
best_portion = "0"

for portion in portions:

    with open(f"result/{latency}/{portion}/result/result_{client}.txt") as f:
        result = f.read()

    print()

    t = re.sub(s, '', result).split()[2:]
    avg = 0
    for i in range(8):
        print(t[i * 50 + 41] + "," + t[i * 50 + 25][:-2] + "," + t[i * 50 + 34])

        if i > 3:
            avg += t[i*50 + 41]

    if best_avg < avg:
        best_avg = avg
        best_portion = portion

    print()
    print()


print(best_portion)
