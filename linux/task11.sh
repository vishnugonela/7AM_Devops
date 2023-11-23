#!/bin/bash
# A shell script to accept a string from the user and print the number of characters count along with its letter

# Read the string from the user
echo "Enter a string:"
read str

str=${str,,}

declare -A counts

for (( i=0; i<${#str}; i++ )); do

  c=${str:$i:1}

  if [[ $c =~ [a-z] ]]; then

    (( counts[$c]++ ))
  fi
done

echo "The character counts are:"
for c in "${!counts[@]}"; do
  echo "$c: ${counts[$c]}"
done

