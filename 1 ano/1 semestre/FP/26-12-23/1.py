def maior(num):
    lst = []
    str_num =""
    for a in str(num):
        lst.append(a)
    lst = sorted(lst,reverse=True)
    print(lst)
    for b in lst:
        str_num += b
    return(int(str_num))

num = int(input("Numero-> "))
print(maior(num))
