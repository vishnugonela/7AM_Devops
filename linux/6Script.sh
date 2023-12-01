#!/bin/bash

ip=1.2.3.4

if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "success"
  read -p "`hostname -I`"

else
  echo "fail"
fi
