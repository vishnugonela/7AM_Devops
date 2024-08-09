#!/bin/bash
echo "enter username"
read username

if [ -z "$username" ]; then
	echo "username is not empty"
	exit 1
fi

if [[ "$username" != "${username^^}" ]]; then
	echo "username must be uppercase"
	exit 1
fi

if [[ "$username" =~ [[:space:]] ]]; then
	echo "no spaces present in the username"
        exit 1
fi

echo "username '$username' is valid"

