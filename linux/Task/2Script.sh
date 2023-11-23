
#!/bin/bash

myfile=$1
read -p "Enter file name:" myfile
echo "Number of lines in file is: `wc -l $myfile`"
echo "Number of words in file is: `wc -w $myfile`"
echo "Number of characters in file is: `wc -c $myfile`"
