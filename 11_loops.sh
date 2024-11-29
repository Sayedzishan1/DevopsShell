#!/bin/bash

#FOR LOOP
for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "Number is $i"
done

for name in Raju sham new
do echo "name is $name"
done

for i in {1..5}
do echo "Number is $i"
done

# FOR WITH FILES Names.txt

file=/home/neosoft/Shell/names.txt
for name in $(cat $file)
do echo "Name is $name"
done

#For Loop using Arrays
myarray=(1 2 3 4 5 HEllo)
length=${#myarray[*]}
echo "Length = $length"
for (( i=0;i<$length;i++ ))
do echo "Value of array is ${myarray[$i]}"
done

t=2
a=$(($t%2))
echo "$a"

for i in 1 2 3 4 5 6 7
do 
if [[ (( $i%2 -eq 0 )) ]]
then echo "the number $i is Even"
else
echo "The number $i is Prime"
fi
done
