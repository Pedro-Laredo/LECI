def mdcc(a,b):
    #a= int(input('a? '))
    #b= int(input('b? '))
    if a%b==0:
        mdc= b
        print(mdc)
    else:
        mdc = a%b
    print(mdc)
                
                


a= int(input('a? '))
b= int(input('b? '))
mdcc(a,b)
