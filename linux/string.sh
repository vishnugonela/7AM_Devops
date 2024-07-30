#!/bin/bash
echo "enter a string"
read "string"
length=${#string}
for (i = 0 ; i< $length; i++);
do
	char=${string:i:1}
	echo "character at position $i: $char"
done

