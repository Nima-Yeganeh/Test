#!/bin/bash
file1="file.txt"
file2="filedone.txt"

echo "Enter a 40-character code: "
read code
Tel_Bot_Token=$(python3 test_decrypt_full_arg.py 1 $code)
Tel_Chat_ID=$(python3 test_decrypt_full_arg.py 2 $code)

while true; do
  while IFS= read -r zline; do
    if ! grep -qF "$zline" "$file2"; then
      echo "**** Started ****"
      echo "$zline"
      rm -f temp.mp4
      url=$zline
      wget -O temp.mp4 "$url"
      echo 'temp.mp4' > zmp4file.txt
      python3 test18_post_telegram_content_using_code_by_arg.py $Tel_Bot_Token $Tel_Chat_ID
      rm -f temp.mp4
      echo "$zline" >> $file2
      echo "**** Done! ****"
      echo "**** Waiting for the next one ****"
      sleep 20
    fi
  done < "$file1"
  git pull
done
