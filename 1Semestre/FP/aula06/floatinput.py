import math

def floatInput(*prompt):
    res = input(prompt[0])
    min = -math.inf
    max = math.inf
    
    
    
    
    while True:
        
        try:
            res = float(res)
            teste = True
        except ValueError:
            teste = False

        if teste == True:
            if len(prompt) == 3:
                min = prompt[1]
                max = prompt[2]
                assert min < max
                if res > max or res < min:
                    print('ERROR: Value should be in [0,100!')
                    res = input(prompt[0])
                else:
                    return res
            
            elif len(prompt) == 2:
                min = prompt[1]
                if res > max or res < min:
                    print('ERROR: Value should be in [-273.15, inf]!')
                    res = input(prompt[0])
                else:
                    return res


            else:
                return res

        else:
            print('ERROR: Not a Float!')
            res = input(prompt[0])


    

def main():
    print("a) Try entering invalid values such as 1/2 or 3,1416.")
    v = floatInput("Value? ")
    print("v:", v)

    print("b) Try entering invalid values such as 15%, 110 or -1.")
    h = floatInput("Humidity (%)? ", 0, 100)
    print("h:", h)

    print("c) Try entering invalid values such as 23C or -274.")
    t = floatInput("Temperature (Celsius)? ",-273.15)
    print("t:", t)

    
    impossible = floatInput("Value in [3, 0]? ",3, 0)
    print("Impossible", impossible)

    return

if __name__ == "__main__":
    main()
