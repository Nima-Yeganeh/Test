#!/bin/bash

url="https://www.tiktok.com/@diy1368/video/7204424654029720838"

number=$(echo "$url" | grep -oE 'video/([0-9]+)' | cut -d '/' -f2)

echo "Number: $number"
