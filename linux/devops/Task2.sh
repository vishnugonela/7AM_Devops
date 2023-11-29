#!/bin/bash

 #myfile=$1

 read -p "enter file name :" myfile

 if [ -f $myfile ]
 then
	 echo "Number of lines in a file     :`wc -l $myfile | awk '{ print $1 }'`"
	 echo "Number of words in a file     :`wc -w $myfile | awk '{ print $1 }'`"
	 echo "Number of charectors in a file:`wc -c $myfile | awk '{ print $1 }'`"
	 echo "size of the file              :`ls -sh $myfile | awk '{ print $1 }'`"
 else
         echo "file not found"
 fi	 
