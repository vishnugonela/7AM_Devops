#!/bin/bash 

myfile=$1

read -p "Enter file name:" myfile

if [ -f $myfile ]

then
        echo "Number of lines in a file: `wc -l $myfile`"
        echo "Number of words in a file: `wc -w $myfile`"
        echo "Number of charachters in a file: `wc -c $myfile`"

else
        echo "No file found"
fi
