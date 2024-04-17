def mdc1(a,b):
    r=a%b
    while r!=0:
        a=b
        b= r
        r=a%b
    return b
    print (b)


a = int(input('a'))
b = int(input('b'))

mdc1(a,b)