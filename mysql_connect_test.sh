#!/bin/bash

# Prompt the user for the hostname, username, and password
read -p "Enter the hostname: " hostname
read -p "Enter the username: " username
read -p "Enter the database: " database
read -s -p "Enter the password: " password

# Connect to the MySQL server and execute a command
mysql -h $hostname -u $username -p$password $database


