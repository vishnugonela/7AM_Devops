#!/bin/bash

# Define the array of numbers
numbers=(1 2 3 5 6 7 8 9)

# Find the missing number
for ((i=1; i<=9; i++));
   do
 if [[ ! " ${numbers[@]} " =~ " $i " ]];
     then
         missing_number=$i
    break
 fi
  done

echo "missing number is :$missing_number "
