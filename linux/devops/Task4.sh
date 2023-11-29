#!/bin/bash
read -p "enter the file extention ( like.java) to search :" file
find ~ -type f -name "*$file"
if [ $file == 0 ]
then
   echo "files:$file"
   exit 1
   fi
   echo ""
 #filter only last 10 days files
  echo "last 10 days files ends with $file"
  find ~ -mtime -100 -type f -name "*file"
 if [ $file == 0 ]
 then
   echo "files:$file"
   exit 1

