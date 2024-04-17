def Countdown():
    N = int(input('N?'))
    if N>0:
        while N>=0:
            print(N)
            N = N-1
    else:
        while N<=0:
            print(N)
            N= N+1        
        
def main():
    Countdown()
        
main()