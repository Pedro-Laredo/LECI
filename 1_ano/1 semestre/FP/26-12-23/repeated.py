def repeated(palavra):
    ocorrencias =  []
    for letra in palavra:
        if letra in ocorrencias:
            return letra
        ocorrencias.append(letra)
    return None

print(repeated("internet"))