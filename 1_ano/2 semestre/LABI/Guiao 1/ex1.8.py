import os
import sys
from Cryptodome.Cipher import AES
from Cryptodome.Hash import SHA256
from Cryptodome.Util.Padding import pad

if len(sys.argv) < 3:
    print("Usage: python3 %s filename key" % (sys.argv[0]))
    sys.exit(1)

fname = sys.argv[1]  # verify if it is a file
if not os.path.exists(fname) or os.path.isdir(fname) or not os.path.isfile(fname):
    print(fname + " is not a file", file=sys.stderr)
    sys.exit(2)

key = sys.argv[2]

with open(fname, "rb") as ficheiro:
    conteudo = ficheiro.read()

if len(key) < 16:
    h = SHA256.new()
    h.update(key.encode("utf-8"))
    key = h.digest()[:16]

if len(key) > 16:
    key = key[:16]

cipher = AES.new(key, AES.MODE_ECB)
# Preencher os dados para que estejam alinhados com o tamanho do bloco (16 bytes)
conteudo_preenchido = pad(conteudo, AES.block_size)
text_incriptado = cipher.encrypt(conteudo_preenchido)
os.write(1, text_incriptado)
