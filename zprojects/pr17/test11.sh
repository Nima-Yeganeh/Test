file1="file.txt"
file2="filedone.txt"

while true; do
  cat $file1 | wc -l
  while IFS= read -r zline; do
      echo "$zline"
      sleep 1
  done < "$file1"
done
