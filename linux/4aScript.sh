#!/bin/bash

# directory walk

loop() {
    for i in *
    do
        if [ -d "$i" ]
        then
            dir=$((dir+1))
            cd "$i"
            loop
        else
            file=$((file+1))
        fi
    done
    cd ..
}
loop
echo directories: $dir, files: $file
