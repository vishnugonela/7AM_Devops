#!/bin/bash

# This script finds a file in a specific directory

echo "Enter the directory name: "
read directory_name

# Check if the directory exists
if [ ! -d "$directory_name" ]
	then
  		echo "Directory does not exist."
  		exit 1
fi

# Get the file name from the user
echo "Enter the file name: "
read file_name

# If the file is found, print its location
find $directory_name -name $file_name 
	if [$? -eq 0]	
		then
  			echo "File found at: $directory_name"
	       
		else
  			echo "File not found."
fi

