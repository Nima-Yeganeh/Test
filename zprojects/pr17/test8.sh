file1="file.txt"
file2="filedone.txt"

# echo "Enter a 40-character code: "
# read code
# Tel_Bot_Token=$(python3 test_decrypt_full_arg.py 1 $code)
# Tel_Chat_ID=$(python3 test_decrypt_full_arg.py 2 $code)
# Insta_ID=$(python3 test_decrypt_full_arg.py 6 $code)
# Insta_Pass=$(python3 test_decrypt_full_arg.py 7 $code)

while true; do
  url="https://video.varzesh3.com/"
  wget -O test3.txt "$url"
  cat test3.txt | grep 'data-nt-link href' | grep 'title' | grep -oP '(?<=<a class="title" data-nt-link href=")[^"]*' | grep -oP '(?<=/video/)\d+' | sort -n | sed 's/^/https:\/\/video.varzesh3.com\/video\//' > $file1
  while IFS= read -r zline; do
    if ! grep -qF "$zline" "$file2"; then
      echo "**** Started ****"
      echo "$zline"
      sleep 500

      echo "$zline" >> $file2
      echo "**** Done! ****"
      echo "**** Waiting for the next one ****"
      sleep 7200
      break
    fi
  done < "$file1"
  echo "**** Update (pr15) ****"
  # git pull
  sleep 120
done
