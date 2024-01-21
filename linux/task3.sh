#!/bin/bash
#Write a shell script to find a file in specific directory. 
#   a. Script should accept user input for path & filename
#     b.  if path not found or empty then script can take default path as /


read -p "Enter the File name is : " filename
read -p "Enter the File Path is : " filepath

if [ -d $filepath ]
then
        echo "Directory foun $filepath"
        echo "Searching for file ......"
        find $filepath -name $filename | grep $filename
        if [ $? == 0 ]
        then
                echo "File Found under $filepath"
        else
                echo "File NOT FOUND"
        fi
else
        echo "Directory not found, so searching file in whole system" find | -name $filename
fi

