lista = []
with open("kaka.txt", "r") as file:
    for line in file:
        fields = line.strip().split("\t")
        print(fields)
