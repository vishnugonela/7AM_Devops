#!/bin/bash

username_fun()

{
	read -p " Enter your username : " name

	echo $name | grep ^[A-Z]*$

	if [ $? == 0 ]

then 
	echo " User name accepted $name "

else
	echo " User name not accepted "

	fi
}

