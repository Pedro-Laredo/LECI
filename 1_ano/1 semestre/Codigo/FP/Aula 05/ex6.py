def shorten(a):
    abreviation= ''

    for char in a:
        if char.isupper():
            abreviation +=char

    return abreviation
            

a = 'Universidade de Aveiro'

print(shorten(a))
