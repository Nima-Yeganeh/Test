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
ztempfile="test8.txt"
rm -f $file2
touch $file2
# echo "" > $file2

# echo "Enter a 4-character code: "
# read code

while IFS= read -r zline; do
  if ! grep -qF "$zline" "$file2"; then

    echo "$line"
    rm -f $ztempfile
    touch $ztempfile
    # Loop until the file size is more than zero
    while [ ! -s "$file_path" ]; do
        echo "File size is zero, retrying..."
        sleep 1
    done
    echo "File size is greater than zero."

    # wget -O test8.txt "$zline"

  fi
done < "$file1"

