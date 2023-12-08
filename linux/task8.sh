#!/bin/bash
read char
echo "enter the char"

# make argument all lowercase
#string=$(echo char | tr '[:upper:]' '[:lower:]')

for char in {a..z};
do
  count=`awk -F"${char}" '{print NF-1}'
  echo "$count"
done
 
