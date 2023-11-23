#!/bin/bash

#checking whether package tomcat is istalled

sudo yum list installed

if [$? == 0]

then
        echo "package tomcat installed" 


else
        echo " package is not installed"
        echo "want to install package: "
        yum install tomcat
        echo "Installation done"
fi

# To update installed package

yum update tomcat

if [$? == 0]

then
        echo " package tomcat updated"

fi
