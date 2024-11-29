#!/bin/bash

#Array
myarray=(1 2 3.0 4 5 "hello")
echo "All the values are ${myarray[*]}"
echo "the array value is ${myarray[5]}"
echo "${myarray[2]}"

#length of array 
echo "The lenght of the array is ${#myarray[*]}"

#specific values of a array

#from 1st to 2nd values
echo "Values from 1-2 ${myarray[*]:1:2}"

#form 3rd value to the 3 values ahead
echo "Values from 3-5 ${myarray[*]:3:3}"

#Array update values of a array
myarray+=(new 10 20)
echo "${myarray[*]}"

#Array with a keyvalue pair 
declare -A newarray
newarray=([Name]=Test [Age]=20 [City]=abc)
echo "The name is ${newarray[Name]}"
echo "The age is ${newarray[Age]}"
echo "The city is ${newarray[City]}"
