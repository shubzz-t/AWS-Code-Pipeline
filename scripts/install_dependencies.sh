#!/bin/bash
sudo yum install tomcat -y
sudo yum -y install httpd

# Configure Apache HTTPD as a proxy for Tomcat
sudo cat << EOF > /etc/httpd/conf.d/tomcat_manager.conf
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com
    DefaultType text/html
    ProxyRequests off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/myproject-web-app/
    ProxyPassReverse / http://localhost:8080/myproject-web-app/
</VirtualHost>
EOF