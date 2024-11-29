#!/bin/bash

# reading a file using While Loop
while read myvar
do
	echo "Value from the file is $myvar"
done < names.txt

#REad a CSV file using while loop
#IFS=internal field separater
#for Avoiding the print of fisrt row write this command
cat test.csv | awk 'NR!=1 {print}' |while IFS="," read id name age
#for noramll use below line
#while IFS="," read id name age
do
	echo "Id is $id"
	echo "Name is $name"
	echo "Age is $age"
done

