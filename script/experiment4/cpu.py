portion = "91"

for i in range(14):

    print((i+1)* 10)
    print()

    with open(f"result/{portion}/cpu/cpu_{i+1}.txt") as f:
        text = f.read()

    s = text.split()
    for i in range(11):
        print(s[i * 50 + 40][:-1]+","+s[i * 50 + 48][:-1])

    print("")
    print("")

