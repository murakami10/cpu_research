
with open("result/input.txt") as f:
    text = f.read()

for i, value in enumerate(text.split("----------------------------------------------------------------------------")):
    if i == 7:
        break
    with open(f"result/result_{i+1}.txt", mode="w") as f:
        f.write(value)

    print(i+1)

    t = value[2:].split()
    for i in range(8):
        print(t[i * 51 + 44] + "," + t[i * 51 + 28][:-2] + "," + t[i * 51 + 37])

    print()
    print()
