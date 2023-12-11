#!/bin/bash

yum list installed | grep tomcat

if [ $? == 0 ]
then
        echo "Tomcat is installed."
else
        echo "Tomcat is not installed"
        echo "Want to install Tomcat...."
        yum install tomcat -y
        echo "Installation is done."
fi
