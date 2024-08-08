#!/bin/bash

Backup_Dir="/home/ec2-user/backup"
Jenkins_home="/var/lib/jenkins"

cp -a $Jenkins_home $Backup_Dir

echo "jenkins backup created at $Backup_Dir"

