#!/bin/bash

if [ $# -lt 1 ]
then 
    echo "no arguments"
fi

if [ $1 -lt 18 ]
then 
    echo "soft drinks"
elif [ $1 -ge 21 ]
then 
    echo "smoke"
else 
    echo "between 18 and 21"
fi