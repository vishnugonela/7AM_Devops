#!/bin/bash

echo "script for the Accept username & password"
echo "********************"
echo "password must be "upper+lower case""

read -p "Enter username: " username
read -sp "Enter password: " password

if [[ $password =~ ^[a-zA-Z]+$ ]];
then
     echo "Password is valid"
else
   echo "password must be "upper+lower letters""
   
fi
