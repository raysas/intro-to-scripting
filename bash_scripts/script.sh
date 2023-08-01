#!/bin/bash

echo "the list of commands u can use:"
ls 

#echoing the files larger than 10 MB
echo -n "number of files >100MB"
find ~ -type -f -size +100MB | wc -l

