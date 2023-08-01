#!/bin/bash

case $1 in 
  -f)
  echo "working on file $2"
  ;;
  -d | --directory)
  echo "working on directory $2"
  ;;
  *) 
  echo "bad arg"
esac