#!/bin/bash

#maths calculations
x=10
y=2

let mul=$x*$y
echo "Multiplication is $mul"

let add=$x+$y
echo "Addition is $add"

#without using let in echo double paranthesis
echo "substraction is $(($x-$y))"
