# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle
from tkinter import filedialog
t = turtle.Turtle()

with open('drawing.txt','r') as file:
# Use t.up(), t.down() and t.goto(x, y)
    for line in file:

        if 'UP' in line:
            t.up()

        elif 'DOWN' in line:
            t.down()
        
        else:
            
            line = line.split()
            x = float(line[0])
            y = float(line[1])
            t.goto(x,y)
            


# wait
turtle.Screen().exitonclick()

