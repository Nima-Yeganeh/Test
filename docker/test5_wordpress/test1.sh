file_contents=$(cat test1.txt)
while IFS= read -r line; do
	echo "$line"
done <<< "$file_contents"


