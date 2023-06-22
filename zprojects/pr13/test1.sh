wget -O test1.txt https://next1.ir/sitemap.xml
cat test1.txt | grep -o '.*\.xml' | sed 's/^[[:space:]]*//' | sed 's/<loc>//g' > test1_rev1.txt
cat test1_rev1.txt | sort > test1_rev2.txt
xml_file_path="test1_rev2.txt"
cat $xml_file_path
sleep 2
while IFS= read -r line; do
  echo "$line"
  sleep 2
  wget -O test1_temp.txt "$line"
  cat test1_temp.txt | grep -oP '(?<=<loc>).*?(?=</loc>)' | sed 's/^[[:space:]]*//' | sed 's/<loc>//g' >> test1_result.txt
done < "$xml_file_path"
rm -f test1_temp.txt
cat test1_result.txt > file.txt
