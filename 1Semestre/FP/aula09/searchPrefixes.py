with open('wordlist.txt', 'r') as file:
    import bisect
    prefixo = input('Prefixo: ')
    count = 0
    for line in file:
        lst = [line]
    
        print(bisect.bisect_left(lst, prefixo))
        if bisect.bisect_left(lst, prefixo) == 0:
            print(bisect.bisect_left(lst, prefixo))
            count += 1
        

    print(count)