import os
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

def derive_key_iv_from_password(password: str, salt=None, iterations: int = 100_000):
    if salt is None:
        salt = os.urandom(16)
    
    password_bytes = password.encode("utf-8")
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt =salt,
        iterations=iterations
    )
    derived = kdf.derive(password_bytes)
    key = derived[:16]
    iv = derived[16:32]
    return key,iv,salt

def aes_cbc_encrypt_with_password(password: str, plaintext: bytes, iterations: int = 100_000) -> bytes:
    key, iv, salt = derive_key_iv_from_password(password, salt=None, iterations=iterations)

    padder = padding.PKCS7(128).padder()
    padded = padder.update(plaintext) + padder.finalize()

    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    encryptor = cipher.encryptor()
    ct = encryptor.update(padded) + encryptor.finalize()

    return salt + ct

def aes_cbc_decrypt_with_password(salt_prefixed_ct: bytes, password: str, iterations: int = 100_000) -> bytes:
    if len(salt_prefixed_ct) < 16:
        raise ValueError("Input demasiado curto: falta salt/ciphertext.")
    salt = salt_prefixed_ct[:16]
    ct = salt_prefixed_ct[16:]
    key, iv, _ = derive_key_iv_from_password(password, salt=salt, iterations=iterations)

    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    decryptor = cipher.decryptor()
    padded = decryptor.update(ct) + decryptor.finalize()

    unpadder = padding.PKCS7(128).unpadder()
    pt = unpadder.update(padded) + unpadder.finalize()
    return pt


def main():
    # EXEMPLO: plaintext em hex do enunciado (podes substituir)
    plaintext_hex = "068b25c7bfb1f8bdd4cfc908f69dffc5ddc726a197f0e5f7"
    plaintext = bytes.fromhex(plaintext_hex)

    password = input("Password: ")
    iterations = 100_000

    blob = aes_cbc_encrypt_with_password(password, plaintext, iterations=iterations)
    print("Salt||Ciphertext (hex):", blob.hex())

    recovered = aes_cbc_decrypt_with_password(blob, password, iterations=iterations)
    print("Recovered plaintext (hex):", recovered.hex())

if __name__ == "__main__":
    main()

