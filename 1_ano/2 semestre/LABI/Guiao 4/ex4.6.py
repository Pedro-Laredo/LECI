import json
with open("stats.json","r") as file:
    data = json.load(file)
for item in data["stats"]:
    print(item)