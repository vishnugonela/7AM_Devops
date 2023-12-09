#!/bin/bash

myfile="hello world"
read -p myfile
echo "Number of lines in file is: `wc -l $myfile`"
echo "Number of words in file is: `wc -w $myfile`"
echo "Number of characters in file is: `wc -c $myfile`"
