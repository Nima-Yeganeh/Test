#!/bin/bash

# Prompt the user for their username
read -p "Enter your username: " user

# Prompt the user for their IP address
read -p "Enter your IP address: " ip

# Print the user and IP address
echo "Username: $user"
echo "IP address: $ip"

# Connect to server using ssh
chmod 0400 aws_linux_key_for_test.pem
ssh -i aws_linux_key_for_test.pem $user@$ip

