#!/bin/bash
echo "enter path"
read r
s=$(ls | wc -l)

for (( i=0; i< "$s" ;i++ ));
do 
echo "$i"
done
