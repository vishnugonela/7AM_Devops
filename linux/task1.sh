#!/bin/bash

#Write a shell script to print sever details.
#Name :
#Memory :
#CPU :
#Disk :

echo "Server name is: `hostname`"
echo "Server IP is: `hostname -I`"
echo "Server Memory usage is: `free -h`"
echo "Server CPU usage is: `mpstat`"
echo "Server Disk usage is: `df -h`"


