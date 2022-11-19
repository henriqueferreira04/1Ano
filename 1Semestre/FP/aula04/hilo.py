# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    tent = 0
    n = 0
    secret = random.randrange(1, 101);
    print("Can you guess my secret?")
    
    while n != secret:
        n = int(input())
        if n > secret:
            print('High')
        else:
            print('Low')
        tent = tent + 1
    print('Precisou de {} tentativas até chegar ao número {}.'.format(tent, secret))
    
main()
