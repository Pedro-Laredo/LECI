def remover_leading0(string):
    string = list(string)
    i = 0
    while i < len(string):
        if string[i] == ".":
            if i + 1 < len(string) and string[i + 1] == "0":
                string.pop(i + 1)
                i -= 1  # Reduzir o índice para reavaliar o próximo elemento
        elif string[i] == "0":
            if i + 1 < len(string) and string[i + 1] == "0":
                string.pop(i)
                i -= 1  # Reduzir o índice para reavaliar o próximo elemento
        i += 1

    return ''.join(string)
                
print(remover_leading0("255.024.01.01"))