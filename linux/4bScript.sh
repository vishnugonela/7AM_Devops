#!/bin/bash


file=".java"

find . -type f -name '*.java'

if [ $file == 0 ]
then
        echo "Files: $file"
        exit 1

fi

find . -mtime -10 -name '*.java'

if [ $file == 0 ]
then
        echo "Files: $file"
        exit 1
fi
