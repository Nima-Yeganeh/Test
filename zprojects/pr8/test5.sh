file_path="test_url.txt"
url=$(sed -n '4p' "$file_path")
echo "$url"
wget -O test3.txt "$url"
cat test3.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http' | grep -vE 'a\s|strong' | grep -vE 'a\s|&#8211;'


