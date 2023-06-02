#!/bin/bash

file1="file.txt"
file2="filedone.txt"
# echo "" > $file2

while IFS= read -r line; do
  if ! grep -qF "$line" "$file2"; then
    echo "$line"
    wget -O test8.txt "$line"
    cat test8.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' > test8_temp.txt
    cat test8_temp.txt
    echo "$line" >> $file2
    sleep 10
  fi
done < "$file1"

