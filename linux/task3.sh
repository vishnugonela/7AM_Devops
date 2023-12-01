#!/bin/bash

# path to the file
echo "Enter the file name:"
read 'filename'

# using wc command to count number of lines
number_of_lines=`wc --lines < $filename`

# using wc command to count number of characters
number_of_characters=`wc --m < $filename`

# using wc command to count number of words
number_of_words=`wc --word < $filename`

# using wc command to count number of Bytes in file
number_of_bytes=`wc --c < $filename`

# Displaying number of lines and number of words
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"
echo "Number of characters: $number_of_characters"
echo "Number of bytes: $number_of_bytes bytes"

