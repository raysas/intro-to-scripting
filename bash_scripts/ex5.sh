#!/bin/bash

if [ -r ex4.sh ]; then 
  source ex4.sh
fi

echo $file
#if it's readable, $file is from ex4.sh
#else it's an empty string