#!/bin/bash

read -p "Enter the hostname: " hostname
sudo hostnamectl set-hostname $hostname
echo "Hostname set to $hostname"
