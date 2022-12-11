import re
s = 'Socket.*?timeout \d+'

portion = "91"

with open(f"result/{portion}/result/input.txt") as f:
    text = f.read()

for i, value in enumerate(text.split("----------------------------------------------------------------------------")):
    if i == 14:
        break
    with open(f"result/{portion}/result/result_{i + 1}.txt", mode="w") as f:
        f.write(value)

    print(i+1)
    print()

    t = re.sub(s, '', value)[2:].split()
    for i in range(8):
        print(t[i * 51 + 44] + "," + t[i * 51 + 28][:-2] + "," + t[i * 51 + 37])

    print()
    print()
