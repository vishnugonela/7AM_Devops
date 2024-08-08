#!/bin/bash

rex= '[1-9]{3}.[1-9]{3}.[1-9]{3}.[1-9]{3}'

ip=hostname -i

v=$(grep "$rex")

echo "$ip" "$v
"
