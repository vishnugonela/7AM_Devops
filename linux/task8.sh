#!/bin/bash
#Accept username & password
#   a. password must be "alphanumeric"
#   b. password must be "upper+lower case"

echo "Please enter your username : "
read username
if [[ $username =~ ^[A-Z]+$ ]]
then
        echo "Thank you, your username is $username"
else
        echo "Invalid user name. Please try again."
fi

echo "Enter Password: "
read password
if [[ $password =~ ^[A-Za-z0-9]+$ ]]
then
        echo "Password is valid"
else
        echo "Password is Invalid."
fi

