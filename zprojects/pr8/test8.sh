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

echo "Enter a 4-character code: "
read code

while IFS= read -r zline; do
  if ! grep -qF "$zline" "$file2"; then

    # echo "$line"
    wget -O test8.txt "$zline"

    cat test8.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' | grep mp3 > test8_temp.txt
    # cat test8_temp.txt
    if [ -s "test8_temp.txt" ]; then
      echo "File is not empty."
      rm -f $zmp3file
      while IFS= read -r line; do
        # echo "$line"
        url="$line"
        filename=$(basename "$url" | sed 's/%28www.Next1.ir%29//')
        # echo "$filename"
        rm -f $filename
        wget -O $filename $url
        id3v2 -D $filename
        echo $filename >> $zmp3file
      done < "test8_temp.txt"
      cat $zmp3file
      ls -anp | grep mp3
    else
      echo "File is empty."
    fi

    cat test8.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' | grep mp4 > test8_temp.txt
    # cat test8_temp.txt
    if [ -s "test8_temp.txt" ]; then
      echo "File is not empty."
      rm -f $zmp4file
      while IFS= read -r line; do
        # echo "$line"
        url="$line"
        filename=$(basename "$url" | sed 's/%28www.Next1.ir%29//')
        # echo "$filename"
        rm -f $filename
        wget -O $filename $url
        echo $filename >> $zmp4file
      done < "test8_temp.txt"
      cat $zmp4file
      ls -anp | grep mp4
    else
      echo "File is empty."
    fi

    cat test8.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 > test8_temp.txt
    # cat test8_temp.txt
    if [ -s "test8_temp.txt" ]; then
      echo "File is not empty."
      rm -f $zjpgfile
      while IFS= read -r line; do
        # echo "$line"
        url="$line"
        filename=$(basename "$url" | sed 's/%28www.Next1.ir%29//')
        # echo "$filename"
        rm -f $filename
        wget -O $filename $url
        echo $filename >> $zjpgfile
      done < "test8_temp.txt"
      cat $zjpgfile
      ls -anp | grep jpg
    else
      echo "File is empty."
    fi

    cat test8.txt | grep -oP '(?<=<h1>).*?(?=</h1>)' > $ztitlefile
    cat test8.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2 > $zengfile
    cat test8.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1 | grep -vE '<a\s|http' > $zinfofile
    cat test8.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http' | grep -vE 'a\s|strong' | grep -vE 'a\s|&#8211;' > $zdetailfile
    cat $ztitlefile > $zcontentfile
    cat $zengfile >> $zcontentfile
    cat $zinfofile >> $zcontentfile
    cat $zdetailfile >> $zcontentfile
    cat $zcontentfile
    cat $ztitlefile > $ztitle2file
    cat $zengfile >> $ztitle2file
    # cat $zinfofile >> $ztitle2file
    
    python3 test18_post_telegram_content_using_code_by_arg.py $code
    # sleep 20

    if [[ -s "$zmp3file" ]]; then
      while IFS= read -r line; do
        if [[ -e "$line" ]]; then
          rm -f "$line"
          echo "Removed file: $line"
        fi
      done < "$zmp3file"
    else
      echo "File is empty or does not exist."
    fi

    if [[ -s "$zmp4file" ]]; then
      while IFS= read -r line; do
        if [[ -e "$line" ]]; then
          rm -f "$line"
          echo "Removed file: $line"
        fi
      done < "$zmp4file"
    else
      echo "File is empty or does not exist."
    fi

    if [[ -s "$zjpgfile" ]]; then
      while IFS= read -r line; do
        if [[ -e "$line" ]]; then
          rm -f "$line"
          echo "Removed file: $line"
        fi
      done < "$zjpgfile"
    else
      echo "File is empty or does not exist."
    fi

    echo "$zline" >> $file2
    sleep 20

  fi
done < "$file1"

