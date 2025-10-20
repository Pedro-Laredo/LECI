from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.asymmetric import padding
import os
import sys
def load_private_key(priv_path):
    with open(priv_path, "rb") as f:
        data = f.read()
    return serialization.load_pem_private_key(data, password=None)


def decrypt_file(enc_path,dec_path,priv_path):
    priv = load_private_key(priv_path)
    block_size = priv.key_size//8
    try:
        with open(enc_path, "rb") as fin, open(dec_path, "wb") as fout:
            while True:
                chunk = fin.read(block_size)
                if not chunk:
                    break
                if len(chunk) != block_size:
                    print("Erro: bloco cifrado incompleto.")
                    sys.exit(1)
                plaintext = priv.decrypt(
                    chunk,
                    padding.OAEP(
                        mgf=padding.MGF1(algorithm=hashes.SHA1()),
                        algorithm=hashes.SHA1(),
                        label=None
                    )
                )
                fout.write(plaintext)
    except Exception as e:
        print("Erro durante a desencriptação:", e)
        sys.exit(1)

    print(f"Desencriptação concluída. Ficheiro guardado em: {dec_path}")

def main():
    encrypted_file = sys.argv[1]
    decrypted_file = sys.argv[2]
    private_key_file = sys.argv[3]

    decrypt_file(encrypted_file, decrypted_file, private_key_file)

if __name__ == "__main__":
    main()
