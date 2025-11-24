# usage: python encrypt-file.py password, MODE, src_file, dst_file, [iterations]
import os
import sys
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes


def derive_key_iv(password: str, salt=None, iterations: int = 100_000):
    if salt is None:
        salt = os.urandom(16)
    
    password_bytes = password.encode("utf-8")
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=iterations
    )
    derived = kdf.derive(password_bytes)
    key = derived[:16]
    iv = derived[16:32]
    return key, iv


def encrypt_content(password, encrypt_mode, src_name, dst_name, iterations: int = 100_000):
    # gerar salt e derivar key/iv
    salt = os.urandom(16)
    key, iv = derive_key_iv(password, salt, iterations=iterations)
    
    # preparar header: salt(16) | mode_id(1) | iterations(4 big-endian)
    mode_id = b'\x01' if encrypt_mode.upper() == "CBC" else b'\x02'
    iterations_be = iterations.to_bytes(4, "big")

    with open(src_name, "rb") as fin, open(dst_name, "wb") as fout:
        # escrever header
        fout.write(salt)
        fout.write(mode_id)
        fout.write(iterations_be)

        # escolher cipher
        if encrypt_mode.upper() == "CBC":
            cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
        else:
            cipher = Cipher(algorithms.AES(key), modes.ECB())

        encryptor = cipher.encryptor()
        padder = padding.PKCS7(128).padder()
        chunk_size = 4096

        while True:
            chunk = fin.read(chunk_size)
            if len(chunk) == 0:
                break
            padded = padder.update(chunk)
            if padded:
                ct_part = encryptor.update(padded)
                if ct_part:
                    fout.write(ct_part)

        # finalizar padder e encryptor
        final_padded = padder.finalize()
        final_ct = encryptor.update(final_padded) + encryptor.finalize()
        fout.write(final_ct)


def decrypt_file(password: str, infile_path: str, outfile_path: str):
    with open(infile_path, "rb") as fin, open(outfile_path, "wb") as fout:
        header = fin.read(16 + 1 + 4)
        if len(header) < 21:
            raise ValueError("Input too short: missing header (salt/mode/iterations).")

        salt = header[:16]
        mode_id = header[16]
        iterations = int.from_bytes(header[17:21], "big")
        mode = "CBC" if mode_id == 1 else "ECB"

        key, iv = derive_key_iv(password, salt, iterations=iterations)

        if mode == "CBC":
            cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
        else:
            cipher = Cipher(algorithms.AES(key), modes.ECB())

        decryptor = cipher.decryptor()
        unpadder = padding.PKCS7(128).unpadder()

        chunk_size = 4096
        while True:
            chunk = fin.read(chunk_size)
            if len(chunk) == 0:
                break
            pt_part = decryptor.update(chunk)
            if pt_part:
                data = unpadder.update(pt_part)
                if data:
                    fout.write(data)

        final_pt = decryptor.finalize()
        if final_pt:
            tail = unpadder.update(final_pt)
            if tail:
                fout.write(tail)

        last = unpadder.finalize()
        if last:
            fout.write(last)


def main():
    if len(sys.argv) < 5:
        print("Usage: python encrypt-file.py <password> <MODE> <src_file> <dst_file> [iterations]")
        print("MODE = CBC or ECB")
        sys.exit(1)

    password = sys.argv[1]
    encrypt_mode = sys.argv[2]
    src_name = sys.argv[3]
    dst_name = sys.argv[4]
    iterations = 100_000
    if len(sys.argv) >= 6:
        try:
            iterations = int(sys.argv[5])
        except Exception:
            print("Invalid iterations value; must be integer.")
            sys.exit(1)

    try:
        encrypt_content(password, encrypt_mode, src_name, dst_name, iterations=iterations)
        print("Encryption done ->", dst_name)
    except Exception as e:
        print("Error during encryption:", e)
        sys.exit(1)


if __name__ == "__main__":
    main()
