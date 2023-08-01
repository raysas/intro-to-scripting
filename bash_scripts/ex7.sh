#!/bin/sh

lines=$(grep -i "hiphop" music.csv)

for line in $lines; do #looping over the lines in an array of strings 
  result=$(echo $line | cut -f 1,2 -d ,) #removig echo will think that $line is a commad!!!
  echo $result
done

# for line in $lines; do
#   for x in $line; do
#     echo $x
#   done
# done