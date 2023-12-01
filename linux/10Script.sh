#!/bin/bash


read -p " Enter your string: " mystring

mycount=`echo -n $mystring | wc -c`

echo " count of char is $mycount "
