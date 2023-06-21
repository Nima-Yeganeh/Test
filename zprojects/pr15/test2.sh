#!/bin/bash
file1="file.txt"
file2="filedone.txt"

while true; do
  while IFS= read -r zline; do
    if ! grep -qF "$zline" "$file2"; then
      echo "**** Started ****"
      echo "$zline"
      break
    fi
  done < "$file1"
done
