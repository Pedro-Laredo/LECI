def primesUpTo(n):
    primes = set(range(2,n+1))
    p=2
    while p*p<=n:
        if p in primes:
            for i in range(p*p,n+1,p):
                primes.discard(i)
        p += 1 
    return primes
        




def main():
    # Testing:
    s = primesUpTo(1000)
    print(s)

    # Do some checks:
    assert primesUpTo(30) == {2,3,5,7,11,13,17,19,23,29}
    assert len(primesUpTo(1000)) == 168
    assert len(primesUpTo(7918)) == 999
    assert len(primesUpTo(7919)) == 1000
    print("All tests passed!")

if __name__ == "__main__":
    main()

