#!/bin/bash

echo ">>>>>details of hostname,memory, cpu,disk<<<<<<<<<<<"

name=$(uname)
mem=$(free -h --total|awk '{print $1 $2 }')
cpu=$(mpstat  -T)
dis=$(df -a  -h --total |awk '{print $1":" $2}')

echo -e ">>>>>>>>>>>>>>>.HOST NAME == <<<<<<<<<<<<<<\n$name"
echo -e ">>>>>>>>>MEMORY DETAILS <<<<<<<<<<<<<<<<\n $mem"
echo -e ">>>>>>>>>>>>>>CPU details<<<<<<<<<<<<<<<<<\n$cpu"
echo -e ">>>>>>>>>>>>>>>>DISK DETAILS <<<<<<<<<<<<<<<<<<<\n$dis"
