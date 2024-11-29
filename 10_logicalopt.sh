#!/bin/bash

#Logical operators such as And or 

# AND Operator
#for string use == and for num values use eq
read -p "Enter the age of the person? " age
read -p "Enter your country? " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can Vote"
else
 	echo "You cannot Vote"
fi

#OR Operator
read -p "Enter the City? " city
read -p "Enter your country? " country

if [[ $city == "Mumbai"  ]] || [[ $country == "India" ]]
then
	echo "You Are a Mumbaikar "
else
 	echo "You Are Not a Mumbaikar"
fi

#Extra Example
read -p "Enter first number? " a
read -p "Enter second number? " b
read -p "Enter Third Number? " c

if [[ $a -gt $b ]] && [[ $a -gt $c ]]
then
	echo "A is the Greatest"
elif [[ $b -gt $a ]] && [[ $b -gt $c ]]
then
	echo "B is the Greatest"
else
	echo "C is the Greatest"
fi

# combination of AND and OR
read -p "Enter your age " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
