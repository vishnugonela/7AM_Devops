#!/bin/bash
#Write a shell script to install a package called 'tomcat'
#    a. Before installing check whether package installed or not

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


