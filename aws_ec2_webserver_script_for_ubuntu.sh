#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2
sudo echo "<html><h1>Test Web Server</h1></html>" > /var/www/html/index.html
sudo echo "<html><h1>Hello World from $(hostname -f)</h1></html>" >> /var/www/html/index.html
