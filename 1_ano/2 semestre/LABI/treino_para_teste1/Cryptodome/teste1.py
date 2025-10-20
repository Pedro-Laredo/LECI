from Cryptodome.Hash import MD5

h = MD5.new()
h.update("Frase de teste nova adição".encode("utf-8"))
print(h.hexdigest())