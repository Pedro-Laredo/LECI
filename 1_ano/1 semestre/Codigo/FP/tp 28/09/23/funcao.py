
def teste (h,m,s):
    sec = (h*60+m)*60+s
    return sec

s= int(input())
m = int(input())
h = int(input())
print(teste(h,m,s))

