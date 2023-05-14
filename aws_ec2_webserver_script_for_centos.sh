#!/bin/bash
yum update -y
yum install httpd -y
systemctl enable httpd.service
systemctl start httpd.service
echo "<html><h1>Test Web Server</h1></html>" > /var/www/html/index.html
echo "<html><h1>Hello World from $(hostname -f)</h1></html>" >> /var/www/html/index.html
