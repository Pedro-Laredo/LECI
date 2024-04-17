def funcao(palavra):
    for a in range(len(palavra)):
        new_pal= palavra[:a] + palavra[a+1:]
        if new_pal == new_pal[::-1]:
            return a
    return -1

print(funcao("aaab"))
