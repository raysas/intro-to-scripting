#!/bin/bash

echo "enter something:"
read
echo "enter your name and save it:"
read name
echo "Hi $name"

read -p "-p is for the prompt and -s is silent :)" -s pass
echo $pass

read -p "wait 10 sec only to input" -t 10  test
echo $test #if more than 10 sec pass will be empty 