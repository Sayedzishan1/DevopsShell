#!/bin/bash

#conditional access
read -p "Enter your marks " marks

if [[ $marks -ge 40 ]]
then
    echo "You are Pass"
else
    echo "You are Fail"
fi

#NEsted IF Statements

if [[ $marks -ge 80 ]]
then
    echo "First Division"
elif [[ $marks -ge 60  ]]
then
    echo "Second Devision"
elif [[ $marks -ge 40 ]]
then
    echo "Third Devision"
else
    echo "Fail"
fi
