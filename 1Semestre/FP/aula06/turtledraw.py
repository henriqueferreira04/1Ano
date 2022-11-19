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
            
            line.split()
            t.goto(line[0], line[1])


# wait
turtle.Screen().exitonclick()

