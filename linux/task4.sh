#!/bin/bash
rx='^[[:upper:][:space:]]*$'

echo "Enter the user name:"
read username
if [[ $username =~ $rx ]];
then
 echo "The username is : $username"
else
	echo "username is not valid"
fi
