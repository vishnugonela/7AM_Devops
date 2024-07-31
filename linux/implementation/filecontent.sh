#!/bin/bash
echo "enter the path to the file"
read filename
wordcount=$(wc -w < "$filename")
linecount=$(wc -l < "$filename")
charcount=$(wc -m < "$filename")
echo "File: $filename"
echo "Number of words : $wordcount"
echo "Number of lines : $linecount"
echo "Number of characters : $charcount"

