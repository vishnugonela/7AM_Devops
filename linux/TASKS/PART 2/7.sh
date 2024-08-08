#!/bin/bash

echo "user name "
read r
u=$(whoami)
if  [[ "$r" =~ ^[a-z]+$ ]] && [[ "$r" == "$u" ]]
then echo "is string matchin username"
elif  [[ "$r" =~ ^[A-Z]+$ ]] && [[ "$r" == "$u" ]]
then echo "is upper string matchin username"
elif  [[ "$r" =~ [[:space:]] ]] && [[ "$r" == "$u" ]]
then echo "is string matchin username no space"
else
	echo "not"
fi
