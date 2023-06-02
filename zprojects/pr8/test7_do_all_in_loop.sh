#!/bin/bash

file_path="file.txt"

while IFS= read -r line; do
    echo "$line"
    echo "******** wget"
    wget -O test7.txt "$line"
    echo "******** extract mp3"
    cat test7.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' >> test7_temp.txt
    echo "******** extract mp4"
    cat test7.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' >> test7_temp.txt
    rm -f test7_result.txt
    cat test7_temp.txt | sort | uniq >> test7_result.txt
    rm -f test7_temp.txt
    echo "******** extract jpg"
    cat test7.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 >> test7_result.txt
    echo "******** cat mp3 + mp4 + jpg"
    cat test7_result.txt
    echo "******** extract title"
    cat test7.txt | grep -oP '(?<=<title>).*?(?=</title>)'
    echo "******** extract h1"
    cat test7.txt | grep -oP '(?<=<h1>).*?(?=</h1>)'
    echo "******** extract eng"
    cat test7.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2
    echo "******** extract more info"
    # cat test7.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1
    cat test7.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1 | grep -vE '<a\s|http'
    echo "******** extract lyric"
    # cat test7.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g'
    # cat test7.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http'
    cat test7.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http' | grep -vE 'a\s|strong'
    sleep 5
done < "$file_path"

