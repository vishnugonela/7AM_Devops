#!/bin/bash

echo "enter the file name"

read r

grep -E '\bV[a-z]*U\b' "$r"
