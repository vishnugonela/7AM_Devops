#!/bin/bash


file=".java"

find ~ -type f -name '*.java'

if [ $file == 0 ]
then
	echo "Files: $file"
	exit 1

fi
echo " "


#Filter only last 10 days files

echo "Last 10 days files ends with .java"

find ~ -mtime -10 -type f -name '*.java'

if [ $file == 0 ]
then
	echo "Files: $file"
	exit 1
fi
echo " "


