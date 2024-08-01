#!/bin/bash

#Memory utilization
echo "Memory utilization"
echo "*****************"

echo "disk usage: "
df -h

echo "memory usage: "
free -h

echo "cpu usage: "
mpstat

