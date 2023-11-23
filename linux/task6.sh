#!/bin/bash
#Write a shell script to find your server IPV4 address, validate IPV4 address format only.
#	b. Filter only IPV6


read -p "Enter IP : " ip
if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
then
        echo "Success"
        read -p "`hostname -I`"
else
        echo "Fail"
fi
~  
