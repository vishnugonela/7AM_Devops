#!/bin/bash

# This script accepts input from the user as their username only.

# Ask the user for their username.
echo "Please enter your username: "
read username

# Check if the username is valid.
if [[ $username =~ ^[A-Za-z0-9_-]+$ ]]; then
  echo "Thank you, your username is $username."
else
  echo "Invalid username. Please try again."
fi

