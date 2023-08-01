#!/bin/sh

x=18 #no $ sign when creating a variable; space-sensitive
name=rayane #will take Nabiha as a string
full_name="rayane adam" #concatenate using ""
num="0123456789"
list=(item_1 item_2 item_3)

echo Hello, this is the 1st bash script in this course, I'm $name and right now i'm $x
echo "this is the 1st item in array: ${list[0]}"
echo "this is the full array: ${list[*]}" #the star lets us print everything inside the list
echo "this is also the full array: ${list[@]}" #same here

echo "this string: $num, is ${#num} characters long" #prints the length of the string
echo "this is everything after the 7th index: ${num:7}" #7th index inclusive
echo "this is everything before the index -6: ${num: -6}" 
echo "this is the 2 indices after the 3rd index: ${num:3:2}"
echo "notice so far they are inclusive"

echo "this is the string without the 1st character: ${num#?}"
echo "this is the string without the 1st character: ${num%?}"

# echo ${num/}

echo THESE ARE SOME GLOBAL VARIABLES:
echo "your home directory is: $HOME"
echo "logged in int: $HOSTNAME"
echo "the shell is $SHELL"
echo "path is: $PATH"
echo

echo "this script name is $0 and is the 1st argument of the prior command"
echo "this is the 2nd argument: $1"
echo "this is the number of arguments: $#"
