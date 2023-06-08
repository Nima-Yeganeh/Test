#!/bin/bash

zmp3fileurl="zmp3fileurl.txt"  # Replace with the actual path to your file

# Read the file line by line and echo each line
while IFS= read -r line; do
  echo "$line"
  url=$line
  echo $url >> /root/test/docker/test5_wordpress/src/file2.txt
  filename=$(basename "$url" | sed 's/-320.*\.mp3/320.mp3/' | sed 's/-128.*\.mp3/128.mp3/')
  echo $filename
  echo $filename >> /root/test/docker/test5_wordpress/src/file1.txt
done < "$zmp3fileurl"

