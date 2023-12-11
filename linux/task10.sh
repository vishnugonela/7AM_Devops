#!/bin/bash
#Write a shell script to loop based on number of characters in a string.
#      Ex:- Accept a string(name) : vishnu 
#           loop suupose excute from V to U (6 digits)

read -p "Enter yourstring : " mystring

        for i in v i s h n u
        do
                echo "$mystring in $i"
        done



