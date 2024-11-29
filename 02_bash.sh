#!/bin/bash

#this is a script for using variables
a=10
name="Test"
age=10 
echo "This is $name my age is $age and we have $a members "
name="New value" 
echo "Changed the value to New var = $name"

#variable that stores the value of a command 
Hostname=$(hostname)
dir=$(pwd)
echo "The name of the machine is $Hostname and the current directory is $dir"
