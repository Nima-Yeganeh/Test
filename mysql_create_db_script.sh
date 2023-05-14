#!/bin/bash

# Prompt the user for the hostname, username, and password
read -p "Enter the hostname: " hostname
read -p "Enter the username: " username
read -s -p "Enter the password: " password

# Loop from 1 to 20 and execute a command
for i in {13..20}; do
  mysql -h $hostname -u $username -p$password -e "CREATE DATABASE TEST$i;"
done

