#!/bin/bash

# make argument all lowercase
string=$(echo $1 | tr '[:upper:]' '[:lower:]')

for char in {a..z}
do
  count=`awk -F"${char}" '{print NF-1}' 

