#!/bin/bash
#shell script to install a package called 'tomcat'
#Before installing check whether package installed or not


package="tomcat"

if [ dnf list installed "$package" ]
then
    echo "$package is installed."
else

    echo "install $package"


    apt install -y $package

