#!/bin/bash

#ask the user for the username and accept only uppercase.


echo "enter the username:"
read username

#check if the username is valid and contain uppercase.
if [[ $username =~ ^[A-Za-z0-9_-]+$ ]
then
	echo "your username is $username."
else
	echo "Invalid username"
fi
