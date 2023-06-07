#!/bin/bash

file1="file.txt"
file2="filedone.txt"
zmp3file="zmp3file.txt"
zmp4file="zmp4file.txt"
zjpgfile="zjpgfile.txt"
ztitlefile="ztitlefile.txt"
ztitle2file="ztitle2file.txt"
zengfile="zengfile.txt"
zinfofile="zinfofile.txt"
zdetailfile="zdetailfile.txt"
zcontentfile="zcontentfile.txt"
echo "" > $file2

# echo "Enter a 4-character code: "
# read code

while IFS= read -r zline; do
  if ! grep -qF "$zline" "$file2"; then

    # echo "$line"
    wget -O test8.txt "$zline"

  fi
done < "$file1"


