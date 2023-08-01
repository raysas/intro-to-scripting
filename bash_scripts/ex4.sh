#!/bin/bash

while [ $# -gt 0 ]; do
  # echo hi
  case $1 in
  -v)
    verbose=true
    ;;
  -l)
    long=true
    ;;
  -f)
    file=$2 #we saved the filename in a variable file 
    shift #we shift to pass the name of the file
    ;;
  *)
    echo "bad args"
    break
    ;;
  esac
  shift #will remove argument from array
done

if [ $verbose ]; then
  echo "Verbose Mode applied"
fi

if [ $long ]; then
  echo "Long Mode is applied"
fi

if [ $file ] #if file is not null
then
  echo "file given is: $file"
fi

if [ $# -gt 0 ]
then echo "the remaining arguments are: $*"
echo "because we break when we meet something other than -v, -f or -l"
fi