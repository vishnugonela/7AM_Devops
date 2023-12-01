#!/bin/bash

# Get the string from the user
echo "Enter a string: "
read string

# Count the number of characters in the string
num_chars=${#string}

# Print the number of characters and the string
echo "The string '$string' has $num_chars characters."

# Print each character in the string on a new line
for char in $string; do
  echo "$char"
done
