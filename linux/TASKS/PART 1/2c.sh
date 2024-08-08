#!/bin/bash
 echo 'enter the file' 
read r 
 grep -E '\b.B.D.\b|\bA.C.E\b' "$r"
