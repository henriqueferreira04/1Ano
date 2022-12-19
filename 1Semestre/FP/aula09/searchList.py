with open('wordlist.txt', 'r') as file:
    import bisect
    count = 0
    for line in file:
        lst = [line.strip()]
        
        if bisect.bisect_left(lst, 'ea') == 0:
            
            count += 1
        
        if bisect.bisect_left(lst, 'eb') == 0:
            
            palavras = count
            break
        
            
    

print(palavras)
