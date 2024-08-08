#!/bin/bash

Backup_Dir="/home/ec2-user/backup"
Jenkins_home="/var/lib/jenkins"
echo "jenkins backup creating at $Backup_Dir"
cp -a $Jenkins_home $Backup_Dir



