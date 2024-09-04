#!/bin/bash
for i in {1..10}
do
    if [ i%2 == 0 ]
    then
            echo "even number :$i"
    else
            echo "odd numbers :$i"
    fi
done
