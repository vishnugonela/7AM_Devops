#!/bin/bash

Backup_Dir="/home/ec2-user/backup"
Jenkins_home="/var/lib/jenkins"

cp -a $Jenkins_home $Backup_Dir/$Backup_file

echo "jenkins backup created at $Backup_file in $Backup_Dir"

