#!/bin/bash

myfile="hello world"
read -p myfile
echo "Number of lines is: `wc -l $myfile`"
echo "Number of words is: `wc -w $myfile`"
echo "Number of characters is: `wc -c $myfile`"
