def countDigits(string):
    count = 0
    for char in string:
        if char.isdigit():
            count += 1
    return count

# Exemplo de uso:
text = "23 mil 456"
digit_count = countDigits(text)
print(digit_count)  # Deve imprimir 5
