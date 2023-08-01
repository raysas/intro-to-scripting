#!/bin/bash

count=$(ls -l | wc -l) #any command can be stored like that
echo $count

exp=$(( 10 + 5 )) #expressions
echo $exp

echo "scale=2; 3.2/2" | bc #bs used whenever floating points
fp=$(echo "scale=2; 3.2/2" | bc)
echo $fp