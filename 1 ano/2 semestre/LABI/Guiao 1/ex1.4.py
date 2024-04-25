import os
import sys
from Cryptodome.Cipher import ARC4
from Cryptodome.Hash import SHA256

if len(sys.argv) < 3:
    print("Usage: python3 %s filename key" % (sys.argv[0]))
    sys.exit(1)

fname = sys.argv[1]  # verify if it is a file
if not os.path.exists(fname) or os.path.isdir(fname) or not os.path.isfile(fname):
    print(fname + " is not a file", file=sys.stderr)
    sys.exit(2)

with open(fname, "rb") as file:
    file_content = file.read()

key = sys.argv[2]

if len(key) < 5:
    h = SHA256.new()
    h.update(key.encode('utf-8'))
    key = h.digest()

elif len(key) > 256:
    key = key[:256]

key = bytes(key, 'utf-8')  # Convertendo para bytes

# Cifrar o arquivo
cipher = ARC4.new(key)
encrypted_content = cipher.encrypt(file_content)

# Escrever o criptograma para o stdout
os.write(1, encrypted_content)
