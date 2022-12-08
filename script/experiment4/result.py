
with open("result/input.txt") as f:
    text = f.read()

for i, value in enumerate(text.split("----------------------------------------------------------------------------")):
    with open(f"result/result_{i}.txt", mode="w") as f:
        f.write(value)

    t = value[2:].split()
    for i in range(8):
        print(t[i * 51 + 44] + "," + t[i * 51 + 28][:-2] + "," + t[i * 51 + 37])