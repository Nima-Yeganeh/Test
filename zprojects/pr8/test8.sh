#!/bin/bash

file1="file.txt"
file2="filedone.txt"
zmp3file="zmp3file.txt"
zmp4file="zmp4file.txt"
echo "" > $file2

while IFS= read -r line; do

  if ! grep -qF "$line" "$file2"; then

    # echo "$line"
    wget -O test8.txt "$line"

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

    echo "$line" >> $file2
    sleep 20

  fi

  cat test8.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 > test8_temp.txt


done < "$file1"

