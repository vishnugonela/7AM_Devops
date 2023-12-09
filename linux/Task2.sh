#!/bin/bash

input_string="This is a sample string.
It has multiple lines.
Let's count the lines, words, and characters."

# Count lines, words, and characters using wc
line_count=$(echo "$input_string" | wc -l)
word_count=$(echo "$input_string" | wc -w)
char_count=$(echo "$input_string" | wc -m)

# Display the counts
echo "Line count: $line_count"
echo "Word count: $word_count"
echo "Character count: $char_count"

