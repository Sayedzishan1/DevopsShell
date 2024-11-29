#!/bin/bash

#string operations in shell
myvar="Hello Variable Length"

#length of the variable 
lengthvar=${#myvar}
echo "Length of the Variable is $lengthvar " 

#upper case 
echo "Upper Case is ${myvar^^}"
#lower case 
echo "Lower case is ${myvar,,}"

#Replace replace the variable words
echo "Replace word of the var ${myvar/Length/is too long}"

#slicing of a string variable
new=${myvar:2:6}
echo "the characrter after slicing is $new"
