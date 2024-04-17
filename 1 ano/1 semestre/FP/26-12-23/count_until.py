def count_until(string):
    count = 0
    for a in string:
        if type(a) != tuple:
            count +=1
        if type(a) == tuple:
            return count
    return -1

a = (1,2,(3,),4,5,6,7,)
print(count_until(a))
