#!/bin/bash
# print content of a file
echo "enter the name of the file"
read filename
echo "1 Filecontent :`(wc $filename)`"
echo "2 wordcount :`(wc -w $filename)`"
echo "3 linecount :`(wc -l  $filename)`"
echo "4 charcount :`(wc -m  $filename)`"

