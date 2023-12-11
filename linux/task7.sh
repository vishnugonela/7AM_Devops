#!/bin/bash
#Write a shell script to accept input from user as their username only. 
#   a. username must be 'string'
#   b. username must be 'UPPERCASE'
#   c. username should not contain spaces

echo "Please enter your username: "
read username
if [[ $username =~ ^[A-Z]+$ ]]
then
        echo "Thank you, your username is $username"
else
        echo "Invalid username. Please try again."
fi


