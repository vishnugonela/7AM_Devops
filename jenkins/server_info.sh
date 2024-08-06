#!/bin/bash

echo "Retrieving CPU and Memory Information:"

# CPU Information
echo "CPU Information:"
lscpu

# Memory Information
echo "Memory Information:"
free -h

# System Information
echo "System Information:"
uname -a
