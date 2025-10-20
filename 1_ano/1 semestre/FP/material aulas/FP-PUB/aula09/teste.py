d = {}
with open("wordlist.txt", "r") as f:
    for linha in f:
        linha = linha.strip()
        if linha.isalpha():
            if linha not in d:
                d[linha] = 1
            else:
                d[linha] += 1

# Ordenar as letras com base na contagem (valor) em ordem decrescente
letras_ordenadas = sorted(d.items(), key=lambda x: x[1], reverse=True)

# Imprimir letras e suas contagens ordenadas
for letra, contagem in letras_ordenadas:
    print(f"{letra}({contagem})")
