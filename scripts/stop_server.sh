#!/bin/bash

# Check if the httpd (Apache) service is running and stop it
isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
    echo "Stopping httpd service..."
    sudo systemctl stop httpd.service
else
    echo "httpd service is not running."
fi

# Check if the tomcat service is running and stop it
isExistApp="$(pgrep tomcat)"
if [[ -n $isExistApp ]]; then
    echo "Stopping tomcat service..."
    sudo systemctl stop tomcat.service
else
    echo "tomcat service is not running."
fi
