a = 'y7676'
def funcao(a):
    count = 0
    for char in a:
        if char.isdigit():
            count += 1

    return count
    
b = funcao(a)
print (b)