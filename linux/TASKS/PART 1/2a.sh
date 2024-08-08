#!/bin/bash
echo "enter file name "
read file

grep -E '^.{6}$' $file 
