#!/bin/bash

echo "enter username:"
read username

echo "enter password:"
read -s password

#creat password in alphanumaric and upper+lower

if [[ $password =~ ^[A-Za-z0-9]+$ ]]
then
	echo "password is valid:"
else
	echo "password is Invalid:"
fi
