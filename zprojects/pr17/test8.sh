
file1="file.txt"
file2="filedone.txt"
infofile="info.txt"

echo "Enter a 40-character code: "
read code
Tel_Bot_Token=$(python3 test_decrypt_full_arg.py 1 $code)
Tel_Chat_ID=$(python3 test_decrypt_full_arg.py 2 $code)
Insta_ID=$(python3 test_decrypt_full_arg.py 6 $code)
Insta_Pass=$(python3 test_decrypt_full_arg.py 7 $code)

while true; do
  rm -f logfile.txt
  url="https://video.varzesh3.com/"
  wget -O test3.txt "$url" > logfile.txt 2>&1
  rm -f logfile.txt
  cat test3.txt | grep 'data-nt-link href' | grep 'title' | grep -oP '(?<=<a class="title" data-nt-link href=")[^"]*' | grep -oP '(?<=/video/)\d+' | uniq | sort -n | uniq | sort -n | sed 's/^/https:\/\/video.varzesh3.com\/video\//' > $file1
  cat $file1 | wc -l
  while IFS= read -r zline; do
    if ! grep -qF "$zline" "$file2"; then
      echo "**** Started ****"
      # rm -f logfile.txt
      echo "$zline"
      echo "$zline" >> $file2
      sleep 2
      url=$zline
      wget -O test1.txt "$url" > logfile.txt 2>&1
      rm -f logfile.txt
      title=$(cat test1.txt | grep 'name' | grep -oP '(?<=name": ")[^"]*' | sed 's/&quot;//g' | head -n1)
      # echo $title
      desc=$(cat test1.txt | grep 'description' | grep -oP '(?<=description": ")[^"]*' | sed 's/&quot;//g' | head -n1)
      # echo $desc
      # tags=$(cat test1.txt | grep 'og:video:tag' | grep -oP '(?<=<meta property="og:video:tag" content=")[^"]*' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//' | sed 's/ /_/g' | sed 's/^[[:space:]]*/#/')
      tags=$(cat test1.txt | grep 'og:video:tag' | grep -oP '(?<=<meta property="og:video:tag" content=")[^"]*' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')
      # echo $tags
      vidurl=$(cat test1.txt | grep 'contentUrl' | grep -oP '(?<=contentUrl": ")[^"]*' | head -n1)
      echo $vidurl
      info=$(cat $infofile | head -n1)
      # echo $info
      # sleep 10
      content="$title $desc $tags $info @$Tel_Chat_ID"
      echo "****"
      # echo $content
      echo $content > ztelcontentfile.txt
      # echo "Test" > ztelcontentfile.txt
      echo $content > zinstacontentfile.txt
      rm -f *.mp4
      rm -f *.jpg
      zfilename='file.mp4'
      # echo $zfilename
      echo "MP4 Download ..."
      wget -O $zfilename $vidurl > logfile.txt 2>&1
      rm -f logfile.txt
      file_path="output.mp4"
      echo "Convert ..."
      ffmpeg -i $zfilename -vf "scale=-2:240" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 96k $file_path > logfile.txt 2>&1
      echo $file_path
      if [ -s "$file_path" ]; then
          echo "OK >> $file_path"
          if [ $(stat -c%s "$file_path") -lt 20000000 ]; then
              echo "File size is lower than 20 megabytes. OK"
              echo $file_path > zmp4file.txt
              echo "**** Update (pr17) **** Telegram Post ..."
              python3 test18_post_telegram_content_using_code_by_arg.py $Tel_Bot_Token $Tel_Chat_ID
              sleep 2
              echo "**** Update (pr17) **** Instagram Post ..."
              python3 post_igtv.py $Insta_ID $Insta_Pass
              sleep 2
              rm -f *.mp4
              rm -f *.jpg
              rm -f logfile.txt
              echo "**** Done! ****"
              echo "**** Waiting for the next one ****"
              sleep 1800
          else
              echo "File size is larger than or equal to 20 megabytes. Not OK"
          fi
      else
          echo "File does not exist or is empty >> $file_path"         
      fi
      rm -f *.mp4
      rm -f *.jpg
      sleep 2
      # break
    fi
  done < "$file1"
  echo "**** Update (pr17) ****"
  # git pull
  sleep 5
done
