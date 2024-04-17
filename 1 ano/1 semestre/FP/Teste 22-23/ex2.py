def number_digits(num,count = 0):
    if num == 0:
        return count
    else:
        return number_digits(num//10,count+1)
    


print(number_digits(num=678))