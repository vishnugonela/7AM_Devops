#!/bin/bash

echo "enter the file name"
read r 

grep -E  'abc' && 'def' "$r"

grep -E 'abc' ||'def' "$r"
