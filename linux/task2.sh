#! /bin/bash
#Write a shell script to print file content details. 
#Like No of Words, lines, characters.  You must accept input from the user.


myfile=$1

#read -p "Enter file name:" myfile

if [ -f $myfile ]

then
        echo "Number of lines in a file: `wc -l $myfile | awk '{ print $1 }'`"
        echo "Number of words in a file: `wc -w $myfile | awk '{ print $1 }'`"
        echo "Number of charachters in a file: `wc -c $myfile | awk '{ print $1}'`"
        echo "Size of the file: `ls -sh $myfile | awk '{ print $1 }'`"

else
        echo "No file found"

fi

