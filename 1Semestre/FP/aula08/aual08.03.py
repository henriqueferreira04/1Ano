
def primesUpTo(n):
    nums = range(2, n+1)
    primes = set(nums)
    for num in nums:
        if num in primes:
            for mult in range(num*2, n+1, num):
                primes.discard(mult)

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

