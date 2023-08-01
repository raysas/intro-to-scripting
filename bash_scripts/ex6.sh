#!/bin/bash

sum_arg(){
  local total=0
  for i in $*; do
    echo "adding $i"
    total=$((total + i))
  done
  echo $total
}

x=$(sum 1 2 3 4)
echo $x