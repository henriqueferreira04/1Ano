def isPrime():
    for num in range(1, 101):
        
        for div in range(2, num-1):
            if num % div == 0:
                print('O número {} náo é primo.'.format(num))
                break
            
             
    print('O número {} é primo.'.format(num))
        

isPrime()
    
        

