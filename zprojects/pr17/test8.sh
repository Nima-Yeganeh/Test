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
  url="https://video.varzesh3.com/"
  # wget -O test3.txt "$url"
  cat test3.txt | grep 'data-nt-link href' | grep 'title' | grep -oP '(?<=<a class="title" data-nt-link href=")[^"]*' | grep -oP '(?<=/video/)\d+' | sort -n | sed 's/^/https:\/\/video.varzesh3.com\/video\//' > $file1
  cat $file1 | wc -l
  while IFS= read -r zline; do
    if ! grep -qF "$zline" "$file2"; then
      echo "**** Started ****"
      echo "$zline"
      url=$zline
      wget -O test1.txt "$url"
      title=$(cat test1.txt | grep 'name' | grep -oP '(?<=name": ")[^"]*' | sed 's/&quot;//g' | head -n1)
      # echo $title
      desc=$(cat test1.txt | grep 'description' | grep -oP '(?<=description": ")[^"]*' | sed 's/&quot;//g' | head -n1)
      # echo $desc
      tags=$(cat test1.txt | grep 'og:video:tag' | grep -oP '(?<=<meta property="og:video:tag" content=")[^"]*' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//' | sed 's/ /_/g' | sed 's/^[[:space:]]*/#/')
      # echo $tags
      vidurl=$(cat test1.txt | grep 'contentUrl' | grep -oP '(?<=contentUrl": ")[^"]*' | head -n1)
      echo $vidurl
      info=$(cat $infofile | head -n1)
      # echo $info
      # sleep 10
      content="$title $desc $tags $info @$Tel_Chat_ID"
      echo "****"
      echo $content
      echo $content > ztelcontentfile.txt
      echo "Test" > ztelcontentfile.txt
      echo $content > zinstacontentfile.txt
      rm -f *.mp4
      rm -f *.jpg
      zfilename='file.mp4'
      echo $zfilename
      wget -O $zfilename $vidurl
      file_path="$zfilename"
      echo $file_path
      if [ -s "$file_path" ]; then
          echo "OK >> $file_path"
          echo $file_path > zmp4file.txt
          echo "Telegram Post ..."
          # python3 test18_post_telegram_content_using_code_by_arg.py $Tel_Bot_Token $Tel_Chat_ID
          sleep 2
          echo "Instagram Post ..."
          # python3 post_igtv.py $Insta_ID $Insta_Pass
          sleep 2
      else
          echo "File does not exist or is empty >> $file_path"
      fi
      # rm -f *.mp4
      # rm -f *.jpg
      echo "$zline" >> $file2
      echo "**** Done! ****"
      echo "**** Waiting for the next one ****"
      sleep 3600

      # break
    fi
  done < "$file1"
  echo "**** Update (pr15) ****"
  # git pull
  sleep 3600
done
