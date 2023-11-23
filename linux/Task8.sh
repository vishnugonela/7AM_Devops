#!/bin/bash

# This script acceipts username and password

# Read username
echo "Enter username: "
read username

# Read password
echo "Enter password: "
read -s password

# set password in alphanumeric & upper+lowe case

if [[ $password =~ ^[A-Za-z0-9]+$ ]]; then
	
	echo "valid password"
else
	echo "Invalid password"
fi

