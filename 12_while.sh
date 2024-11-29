#!/bin/bash

#WHILE Loop
count=0
num=10

while [ $count -le $num ]
do 
	echo "Number are $count"
   	let count++
done

#While Infinite Loop
while true
do
  echo "Hi"
  sleep 2s
done

#INfinite using for loop
for (( ;; ))
do
	echo "hii"
	sleep 2s
done
