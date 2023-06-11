wget -O test1.txt https://next1.ir/sitemap.xml
cat test1.txt | grep -o '.*\.xml' | sed 's/^[[:space:]]*//' | sed 's/<loc>//g' > test1_rev1.txt

file_path="test1_rev1.txt"

# while IFS= read -r line; do
#   echo "$line"
#   wget -O test1_temp.txt "$line"
#   cat test1_temp.txt | grep -oP '(?<=<loc>).*?(?=</loc>)' | sed 's/^[[:space:]]*//' | sed 's/<loc>//g' >> test1_result.txt
# done < "$file_path"
# rm -f test1_temp.txt

