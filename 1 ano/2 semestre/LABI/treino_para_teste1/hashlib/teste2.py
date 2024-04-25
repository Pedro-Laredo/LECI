import hashlib

h = hashlib.md5()
h.update("Frase de teste nova adição".encode("utf-8"))
print(h.hexdigest())