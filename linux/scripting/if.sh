#!/bin/bash


a=$1
b=$2
c=$3

if [ $a == $b ]

then
	if [ $a == $c ]
	then
		for i in {1..3}
		do	
		echo "a=$a, b=$b and c=$c are equal with loop $i "
		done
	fi
elif [ $b == $c ]
then
	echo "only b & c are equal"
elif [ $a == $c ]
then
	echo "only a & c are equal"

else
	echo "a, b and c are UNIQUE"
fi

