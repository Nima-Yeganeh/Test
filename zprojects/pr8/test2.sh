file_path="test_url.txt"
read -r url < "$file_path"
echo "$url"
wget -O test2.txt "$url"
cat test2.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' >> test2_temp.txt
cat test2.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' >> test2_temp.txt
rm -f test2_result.txt
cat test2_temp.txt | sort | uniq >> test2_result.txt
rm -f test2_temp.txt
cat test2_result.txt

