#!/bin/bash


a=$(find -name "*.java")
b=$(find -name "*.java"  -mtime -10)

echo "all java files == $a"
echo "all java files last 10 days == $b"

if [ -n "$b" ]
then  c=$(rm $(find  -name "*.java" -mtime -10))  
        echo "all past 10days files are removed"
else 
	echo "null"        
fi



