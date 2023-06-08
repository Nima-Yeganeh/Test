#!/bin/bash

zmp3fileurl="zmp3fileurl.txt"  # Replace with the actual path to your file
zmp3newfileurl="zmp3newfileurl.txt"

rm -f $zmp3newfileurl

# Read the file line by line and echo each line
while IFS= read -r line; do
  echo "$line"
  url=$line
  echo $url >> /root/test/docker/test5_wordpress/src/file2.txt
  filename=$(basename "$url" | sed 's/-320.*\.mp3/320.mp3/' | sed 's/-128.*\.mp3/128.mp3/')
  echo $filename
  echo $filename >> /root/test/docker/test5_wordpress/src/file1.txt
  echo "https://test2-dl.nimayeganeh.ir/mp3-play.php?filename=$filename" >> $zmp3newfileurl
done < "$zmp3fileurl"
cat $zmp3newfileurl

