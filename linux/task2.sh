!/bin/bash
# This script monitors disk  usage

while :
do 
  # Get the current usage of disk
  DiskUsage=$(df -h | awk '/Filesystem/dev/mapper/vgubuntu-root {print $2,$3,$4,$5}')

  # Print the usage
  echo "disk Usage: $DiskUsage%"
   # Sleep for 1 second
  sleep 1
done

