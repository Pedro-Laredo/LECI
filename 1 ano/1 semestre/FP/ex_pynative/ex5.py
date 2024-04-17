sample_dict = {
    "name": "Kelly",
    "age": 25,
    "salary": 8000,
    "city": "New york"}

# Keys to extract
keys = ["name", "salary"]
new_dict = {}
for a in keys:
    new_dict[a] = sample_dict.get(a)
print(new_dict)