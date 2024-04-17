def tax(x):
    if x<=1000:
        y= 0.1*x
        return y
    

    elif 1000<x<=2000:
        y= 0.2*x -100
        return y
    

    else:
        y= 0.3*x-300
        return y
    
x = float(input('x? '))
y = tax(x)
print(y)
