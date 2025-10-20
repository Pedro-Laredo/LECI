from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.asymmetric import padding
import os
import sys

def load_public_key(pub_path):
    with open(pub_path,"rb") as f:
        data = f.read()
    return serialization.load_pem_public_key(data)

def rsa_oaep_limits(pubkey):
    # k = key size in bytes
    k = pubkey.key_size // 8
    # OAEP com SHA-1 (hLen = 20)
    hlen = hashes.SHA1().digest_size
    max_plain = k - 2 * hlen - 2
    return max_plain, k

def encrypt_file(input_path,pub_path,output_path):
    pub = load_public_key(pub_path)
    max_plain,cypher_block_size = rsa_oaep_limits(pub)
    try:
        with open(input_path, "rb") as fin, open(output_path, "wb") as fout:
            while True:
                chunk = fin.read(max_plain)
                if not chunk:
                    break
                ct = pub.encrypt(
                    chunk,
                    padding.OAEP(
                        mgf=padding.MGF1(algorithm=hashes.SHA1()),
                        algorithm=hashes.SHA1(),
                        label=None
                    )
                )
                fout.write(ct)
    except Exception as e:
        print("Erro durante a encriptação:", e)
        sys.exit(1)
    print("Encriptação concluída.")


def main():
    input_file = sys.argv[1]
    public_key_file = sys.argv[2]
    output_file = sys.argv[3]

    encrypt_file(input_file, public_key_file, output_file)

if __name__ == "__main__":
    main()


