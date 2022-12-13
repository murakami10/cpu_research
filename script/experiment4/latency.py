
portion = "91"
with open(f"result/{portion}/latency/latency.txt") as f:
    text = f.read()


ts = text.split('--------------------------------')

for i in range(11):
    s = ''

    for j in range(14):
        s += str((i+9)*10) + "," + str(list(filter(None,ts[j].splitlines()))[i]) + ","
    print(s)
