import hashlib
h = hashlib.md5()
h.update("Frase de teste ".encode("utf-8"))
print(h.hexdigest())
h.update("nova adição".encode("utf-8"))
print(h.hexdigest())
print("----------------------------")



