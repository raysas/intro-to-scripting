#!/bin/sh

lines=$(grep -E "^/bin" /etc/shells)
for line in $lines;do
  result=$(echo $line | awk -F '/' '{ print $3 }')
  echo $result
done