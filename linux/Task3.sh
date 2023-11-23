#!/bin/bash
echo "Enter the directory name: "
read directory_name
if [ ! -d "$directory_name" ]
	then
  		echo "Directory does not exist."
  		exit 1
fi
echo "Enter the file name: "
read file_name
find $directory_name -name $file_name 
	if [$? -eq 0]	
		then
  			echo "File found at: $directory_name"
	       
		else
  			echo "File not found."
fi

