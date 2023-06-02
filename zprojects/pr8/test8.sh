#!/bin/bash

file1="file.txt"
file2="filedone.txt"

while IFS= read -r line; do
  if ! grep -qF "$line" "$file2"; then
    echo "$line"
  fi
done < "$file1"
