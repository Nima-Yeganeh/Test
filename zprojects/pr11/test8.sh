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
ztestfile="test8.txt"
ztesttemp="test8_temp.txt"
zsleeptime=10
rm -f $file2
touch $file2
# echo "" > $file2

# echo "Enter a 4-character code: "
# read code

while IFS= read -r zline; do
  if ! grep -qF "$zline" "$file2"; then

    echo "$line"
    rm -f $ztestfile
    touch $ztestfile
    # Loop until the file size is more than zero
    while [ ! -s "$ztestfile" ]; do
      echo "File size is zero, retrying..."
      wget -O $ztestfile "$zline"
      sleep $zsleeptime
    done
    echo "File size is greater than zero." 
    cat $ztestfile | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' | grep mp3 > $ztesttemp
    cat $ztesttemp
    if [ -s "$ztesttemp" ]; then
      echo "File is not empty."
    else
      echo "File is empty."
    fi
    sleep $zsleeptime

  fi
done < "$file1"

