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
      rm -f downloads/*.mp4
      # ls -anp downloads/
      # rm -f temp.mp4
      url=$zline
      number=$(echo "$url" | grep -oE 'video/([0-9]+)' | cut -d '/' -f2)
      zfilename=$number'.mp4'
      echo $zfilename
      node index.js "$url"
      # sleep 2
      file_path="downloads/$zfilename"
      echo $file_path
      if [ -s "$file_path" ]; then
          echo "OK >> $file_path"
          # sleep 100
          # wget -O temp.mp4 "$url"
          # echo 'temp.mp4' > zmp4file.txt
          echo $file_path > zmp4file.txt
          python3 test18_post_telegram_content_using_code_by_arg.py $Tel_Bot_Token $Tel_Chat_ID
          # rm -f temp.mp4
      else
          echo "File does not exist or is empty >> $file_path"
      fi
      rm -f downloads/*.mp4
      echo "$zline" >> $file2
      echo "**** Done! ****"
      echo "**** Waiting for the next one ****"
      sleep 300
    fi
  done < "$file1"
  echo "**** Update (pr15) ****"
  git pull
  sleep 120
done
