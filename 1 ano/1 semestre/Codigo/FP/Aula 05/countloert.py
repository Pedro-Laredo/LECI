lst = [3,4,5,6,7,8,9]
v = 5

def countlower(lst,v):
    
    b= max(lst)
    c = min(lst)

    a = 0
    for i in range (c,b+1):
    
        if i<v:
            a = a +1

    return a 
    

print(countlower(lst,v))