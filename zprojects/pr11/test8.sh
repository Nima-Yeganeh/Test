#!/bin/bash

file1="file.txt"
file2="filedone.txt"
zmp3file="zmp3file.txt"
zmp3fileurl="zmp3fileurl.txt"
zmp4file="zmp4file.txt"
zmp4fileurl="zmp4fileurl.txt"
zjpgfile="zjpgfile.txt"
zjpgfileurl="zjpgfileurl.txt"
ztitlefile="ztitlefile.txt"
ztitle2file="ztitle2file.txt"
zengfile="zengfile.txt"
zinfofile="zinfofile.txt"
zdetailfile="zdetailfile.txt"
zcontentfile="zcontentfile.txt"
ztestfile="test8.txt"
ztesttemp="test8_temp.txt"
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
      sleep 1
    done
    echo "File size is greater than zero." 
    cat $ztestfile | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' | grep mp3 > $ztesttemp
    if [ -s "$ztesttemp" ]; then
      echo "File is not empty."
      cat $ztesttemp > $zmp3fileurl
      echo "zmp3fileurl:"
      cat $zmp3fileurl
      cat $ztestfile | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' | grep mp4 > $ztesttemp
      cat $ztesttemp > $zmp4fileurl
      echo "zmp4fileurl:"
      cat $zmp4fileurl
      cat $ztestfile | grep 'img loading' | grep -o '.*\.jpg' |  grep -oP 'src="\K[^"]+' > $ztesttemp
      cat $ztesttemp > $zjpgfileurl
      echo "zjpgfileurl:"
      cat $zjpgfileurl

      cat $ztestfile | grep -oP '(?<=<h1>).*?(?=</h1>)' > $ztitlefile
      cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2 > $zengfile
      # cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1 | grep -vE '<a\s|http' > $zinfofile
      cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | grep -vE '<a\s|http' > $zinfofile
      # cat $ztestfile | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http' | grep -vE 'a\s|strong' | grep -vE 'a\s|&#8211;' > $zdetailfile
      cat $ztestfile | grep 'text-align: center;' | grep -oP '(?<=\>).*?(?=</span></p>)' | grep -oP '(?<=\>).*$' | grep -vE '<a\s|http' | grep -vE 'a\s|style' > $zdetailfile
      
      echo "ztitlefile:"
      cat $ztitlefile
      cat $ztitlefile > $zcontentfile
      echo "zengfile:"
      cat $zengfile
      cat $zengfile >> $zcontentfile
      echo "zinfofile:"
      cat $zinfofile
      cat $zinfofile >> $zcontentfile
      echo "zdetailfile:"
      cat $zdetailfile
      cat $zdetailfile >> $zcontentfile
      # echo "zcontentfile:"
      # cat $zcontentfile
      cat $ztitlefile > $ztitle2file
      cat $zengfile >> $ztitle2file
      # echo "ztitle2file:"
      # cat $ztitle2file
      
    else
      echo "File is empty."
    fi

    echo "$zline" >> $file2
    sleep 1

  fi
done < "$file1"
