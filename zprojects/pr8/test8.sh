#!/bin/bash

file1="file.txt"
file2="filedone.txt"
# echo "" > $file2

while IFS= read -r line; do
  if ! grep -qF "$line" "$file2"; then
    echo "$line"
    echo "$line" >> $file2
  fi
done < "$file1"
