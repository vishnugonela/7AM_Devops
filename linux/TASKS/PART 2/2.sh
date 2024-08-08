#!/bin/bash

echo "file content details"
echo "Please enter the file name or file path"
read r

a=$(wc -m "$r"|awk '{print $1}') 
b=$(wc -l "$r"|awk '{print $1}')
c=$(wc -w "$r"|awk "{print $1}")
 

echo "file has chars of  $a"

echo "file has line of   $b"


echo "file has word count of $c"


