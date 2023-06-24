file1="file.txt"
file2="filedone.txt"

while true; do
  rm -f logfile.txt
  url="https://video.varzesh3.com/"
  wget -O test3.txt "$url" > logfile.txt 2>&1
  rm -f logfile.txt
  cat test3.txt | grep 'data-nt-link href' | grep 'title' | grep -oP '(?<=<a class="title" data-nt-link href=")[^"]*' | grep -oP '(?<=/video/)\d+' | uniq | sort -n | uniq | sort -n | sed 's/^/https:\/\/video.varzesh3.com\/video\//' > $file1
  cat $file1 | wc -l
  while IFS= read -r zline; do
      echo "$zline"
      sleep 1
  done < "$file1"
done
