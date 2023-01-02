import re
s = 'Socket.*?timeout \d+'


latency = "5"
portions = ["9505", "9010", "8515", "8020", "7525", "7030", "6535", "6040", "5545", "5050", "00100"]


for portion in portions:
    with open(f"result/{latency}/{portion}/result/input.txt") as f:
        text = f.read()

    for i, value in enumerate(text.split("----------------------------------------------------------------------------")):
        if i == 14:
            break

        with open(f"result/{latency}/{portion}/result/result_{i + 1}.txt", mode="w") as f:
            f.write(value)

        print(i+1)
        print()

        t = re.sub(s, '', value).split()[2:]
        for i in range(8):
            print(t[i * 50 + 41] + "," + t[i * 50 + 25][:-2] + "," + t[i * 50 + 34])

        print()
        print()
