#!/bin/bash

#user interaction
echo "What is your Name"
read name
echo "Hello $name"

#instead of using echo you can do this 
read -p "What is Your Name" name
echo "Hello $name How Are you?"
