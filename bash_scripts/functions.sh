#!/bin/bash

sum(){

  total=0
  total=$((total +5))
  local salut="hi"
  echo $salut $total
  echo $#
}

sum 2 3 4
echo $total #THE VARIABLE IS GLOBAL FOR THE SCRIPT
#TO MAKE IT LOCAL ADD local

x=$(sum 2 3 4) #now x is like a command
echo $x