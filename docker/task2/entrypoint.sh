#!/bin/bash

CONTAINER_NAME=$(hostname)
CONTAINER_IP=$(hostname -i)
CURRENT_DATE=$(date)

sed -i "s/{{CONTAINER_NAME}}/${CONTAINER_NAME}/g" /usr/share/nginx/html/index.html
sed -i "s/{{CONTAINER_IP}}/${CONTAINER_IP}/g" /usr/share/nginx/html/index.html
sed -i "s/{{DATE}}/${CURRENT_DATE}/g" /usr/share/nginx/html/index.html

nginx -g 'daemon off;'
