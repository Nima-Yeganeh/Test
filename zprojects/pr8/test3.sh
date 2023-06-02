file_path="test_url.txt"
read -r url < "$file_path"
echo "$url"
wget -O test3.txt "$url"
rm -f test3_result.txt
cat test3.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 >> test3_result.txt
cat test3_result.txt

