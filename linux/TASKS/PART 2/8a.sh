#!/bin/bash

echo "user name "
read r
u=$(whoami)
echo "enter pass"
read p 
if  [[ "$r" =~ ^[a-z]+$ ]] && [[ "$r" == "$u" ]] && [ "$p" == "123" ]
then echo "is string matchin username and password "
elif  [[ "$r" =~ ^[A-Z]+$ ]] && [[ "$r" == "$u" ]]
then echo "is upper string matchin username"
elif  [[ "$r" =~ [[:space:]] ]] && [[ "$r" == "$u" ]]
then echo "is string matchin username no space"
else
	echo "not"
fi
