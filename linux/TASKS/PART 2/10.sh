#!/bin/bash

read r

for (( i=0; i< ${#r} ;i++ ));
do 
s=${r:i:1}
echo "$s"
done
