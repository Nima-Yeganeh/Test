#!/bin/bash

file_path="file.txt"

while IFS= read -r line; do
    echo "$line"
    wget -O test7.txt "$line"
    cat test7.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' >> test7_temp.txt
    cat test7.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' >> test7_temp.txt
    rm -f test7_result.txt
    cat test7_temp.txt | sort | uniq >> test7_result.txt
    rm -f test7_temp.txt
    cat test7.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 >> test7_result.txt
    cat test7_result.txt
    cat test7.txt | grep -oP '(?<=<title>).*?(?=</title>)'
    cat test7.txt | grep -oP '(?<=<h1>).*?(?=</h1>)'
    cat test7.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2
    cat test7.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1
    cat test7.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g'
    sleep 5
done < "$file_path"

