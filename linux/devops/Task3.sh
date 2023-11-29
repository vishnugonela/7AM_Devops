#!/bin/bash
#myfile=$1
read -p "enter file name:" myfile
if [ -f $myfile ]
then
   echo "number of lines in a file : `wc -l $myfile | awk '{ print $1 }'`"
   echo "number of words in a file : `wc -l $myfile | awk '{ print $1 }'`"
   echo "number of charectors in a fie : `wc -l $myfile | awk '{ print $1 }'`"
 else
    echo "no file found"
  fi
