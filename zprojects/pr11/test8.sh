#!/bin/bash

file1="file.txt"
file2="filedone.txt"
zmp3file="zmp3file.txt"
zmp3fileurl="zmp3fileurl.txt"
zmp3newfileurl="zmp3newfileurl.txt"
zmp3new128fileurl="zmp3new128fileurl.txt"
zmp4file="zmp4file.txt"
zmp4fileurl="zmp4fileurl.txt"
zjpgfile="zjpgfile.txt"
zjpgfileurl="zjpgfileurl.txt"
zjpgfilename="zjpgfilename.txt"
ztitlefile="ztitlefile.txt"
ztitle2file="ztitle2file.txt"
zengfile="zengfile.txt"
zinfofile="zinfofile.txt"
zdetailfile="zdetailfile.txt"
zdetailfile2="zdetailfile2.txt"
zcontentfile="zcontentfile.txt"
ztestfile="test8.txt"
ztesttemp="test8_temp.txt"
zdlsitefilepath1filename="/root/test/docker/test5_wordpress/src/file1.txt"
zdlsitefilepath2fileurl="/root/test/docker/test5_wordpress/src/file2.txt"
zdlurlpath="https://test2-dl.nimayeganeh.ir/mp3-play.php?filename="
zfile4="file4.htm"

# rm -f $file2
# touch $file2

# echo "Enter a 4-character code: "
# read code

while IFS= read -r zline; do
  if ! grep -qF "$zline" "$file2"; then

    echo "$zline"
    rm -f $ztestfile
    touch $ztestfile

    # Loop until the file size is more than zero
    while [ ! -s "$ztestfile" ]; do
      echo "File size is zero, retrying..."
      wget -O $ztestfile "$zline"
      sleep 1
    done
    echo "File size is greater than zero." 

    cat $ztestfile | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' | grep mp3 > $ztesttemp
    if [ -s "$ztesttemp" ]; then

      echo "File is not empty."
      cat $ztesttemp > $zmp3fileurl
      echo "zmp3fileurl:"
      cat $zmp3fileurl
      cat $ztestfile | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' | grep mp4 > $ztesttemp
      cat $ztesttemp > $zmp4fileurl
      echo "zmp4fileurl:"
      cat $zmp4fileurl
      cat $ztestfile | grep 'img loading' | grep -o '.*\.jpg' |  grep -oP 'src="\K[^"]+' > $ztesttemp
      cat $ztesttemp > $zjpgfileurl
      echo "zjpgfileurl:"
      cat $zjpgfileurl

      cat $ztestfile | grep -oP '(?<=<h1>).*?(?=</h1>)' > $ztitlefile
      
      # cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2 > $zengfile

      # cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2 | grep -vE '<a\s|http' | grep -vE 'a\s|style' > $zengfile

      # cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | grep -vE '<a\s|http' | sed '/^$/d' | grep -v '^[[:space:]]*$' | grep -vE '^\s*$' > $zengfile

      cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | grep -vE '<a\s|http' | sed '/^$/d' | grep -v '^[[:space:]]*$' | grep -vE '^\s*$' | grep -vE '<a\s|style' > $zengfile

      echo '' > $zengfile

      # cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1 | grep -vE '<a\s|http' > $zinfofile
      
      cat $ztestfile | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | grep -vE '<a\s|http' > $zinfofile

      echo '' > $zinfofile

      # cat $ztestfile | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http' | grep -vE 'a\s|strong' | grep -vE 'a\s|&#8211;' > $zdetailfile
      
      # cat $ztestfile | grep 'text-align: center;' | grep -oP '(?<=\>).*?(?=</span></p>)' | grep -oP '(?<=\>).*$' | grep -vE '<a\s|http' | grep -vE 'a\s|style' > $zdetailfile
      
      # bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' |  bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' | grep -vE '<a\s|http' | grep -v '<span id="more'

      # bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' |  bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' | grep -vE '<a\s|http' | grep -v '<span id="more' | sed 's/<p style=.*center;">//g' | sed 's/<br \/>//g' | sed 's/<\/p>//g' > $zdetailfile

      ### 
      ### bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' | grep -vE '<a\s|http' | grep -v '<span id="more' | sed 's/<p style=.*center;">//g' | sed 's/<br \/>//g' | sed 's/<\/p>//g' | sed 's/<span.*;"> //g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<strong>//g' | sed 's|</strong>||g' | grep -vE '<a\s|aligncenter' > $zdetailfile

      # cat test8.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | sed 's/<span.*;">//g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<strong>//g' | sed 's|</strong>||g' | grep -vE '<a\s|http' | grep -vE '<a\s|span id' > $zdetailfile

      # cat test8.txt | grep -P '(?<=<p style="text-align: center;">).*?(?=</p>)|(?<=<span style).*?(?=</span>)'

      cat test8.txt | grep -P '(?<=<p style="text-align: center;">).*?(?=</p>)|(?<=<span style).*?(?=</span>)' | sed 's/<span.*;">//g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<strong>//g' | sed 's|</strong>||g' | grep -vE '<a\s|http' | grep -vE '<a\s|span id' | sed 's/<br \/>//g' | sed 's/<\/p>//g' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<p>//g' | sed 's/<p class.*;">//g' | sed 's/<div.*">//g' | sed 's/<\/div>//g' | sed 's/ &#8230;//g' | sed 's/<p.*">//g' | grep -vE '<a\s|♫' | sed 's/<div>//g' | sed 's/<h2>//g' | sed 's/<\/h2>//g' | grep -vE '<a\s|نکست وان' | sed 's/<span.*>//g' | sed 's/<"span.*">//g' | sed 's/<h2.*">//g' | sed 's/&#8230;//g' > $zdetailfile

      bash test9.sh | grep -E -e 'text-align: center;' -e '<br />' -e '</p>' | grep -vE '<a\s|http' | grep -v '<span id="more' | sed 's/<p style=.*center;">//g' | sed 's/<br \/>//g' | sed 's/<\/p>//g' | sed 's/<span.*;"> //g' | sed 's/<span.*;">//g' | sed 's/<\/span>//g' | sed 's/<strong>//g' | sed 's|</strong>||g' | grep -vE '<a\s|aligncenter' | sed 's/<p.*">//g' | grep -vE '<a\s|♫' | sed 's/<div.*">//g' | sed 's/<p>//g' | grep -vE '<a\s|نکست وان' | sed 's/<span.*>//g' | sed 's/<"span.*">//g' | sed 's/<h2.*">//g' | sed 's/&#8230;//g' > $zdetailfile2

      line_count=$(wc -l < "$zdetailfile")
      if [ "$line_count" -lt 8 ]; then
        cat $zdetailfile2 >> $zdetailfile
      fi

      echo "ztitlefile:"
      cat $ztitlefile
      cat $ztitlefile > $zcontentfile
      echo "zengfile:"
      cat $zengfile
      cat $zengfile >> $zcontentfile
      echo "zinfofile:"
      cat $zinfofile
      cat $zinfofile >> $zcontentfile
      echo "zdetailfile:"
      cat $zdetailfile
      cat $zdetailfile >> $zcontentfile
      
      echo "********" >> log.txt
      echo $zline >> log.txt
      cat $zcontentfile >> log.txt
      echo "********" >> log.txt
      
      # echo "" >> $zcontentfile
      # echo "zcontentfile:"
      # cat $zcontentfile
      cat $ztitlefile > $ztitle2file
      cat $zengfile >> $ztitle2file
      # echo "ztitle2file:"
      # cat $ztitle2file
      
      rm -f $zjpgfile
      rm -f $zjpgfilename
      if [[ $(cat "$zjpgfileurl" | wc -l) -gt 0 ]]; then

        url=$(cat $zjpgfileurl | head -n 1)
        echo $url
        filename=$(basename "$url")
        echo $filename
        echo $filename > $zjpgfilename
        cat $zjpgfilename
        rm -f $filename
        touch $filename

        # Loop until the file size is more than zero
        while [ ! -s "$filename" ]; do
          echo "File size is zero, retrying..."
          wget -O $filename "$url"
          sleep 1
        done
        echo "File size is greater than zero."

        ls -anp | grep $filename
        zimagefile=$filename

        if [[ $(cat $zmp3fileurl | wc -l) -gt 0 ]]; then

          echo "mp3 files to check..."
          valid=true

          while IFS= read -r url; do         
            echo $url
            headers=$(curl -sI "$url")
            content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
            if [[ -n "$content_length" ]]; then
              if (( content_length <= 1024 )); then
                valid=false
                break
              fi
            else
              valid=false
              break
            fi
          done < "$zmp3fileurl"

          echo $valid
          
          if $valid; then
            echo "OK found valid mp3 url links..."
          
            rm -f $zmp3newfileurl
            while IFS= read -r line; do
              echo "$line"
              url=$line
              echo $url >> $zdlsitefilepath2fileurl
              filename=$(basename "$url" | sed 's/-320.*\.mp3/320.mp3/' | sed 's/-128.*\.mp3/128.mp3/')
              echo $filename
              echo $filename >> $zdlsitefilepath1filename
              echo "$zdlurlpath$filename" >> $zmp3newfileurl
            done < "$zmp3fileurl"
            cat $zmp3newfileurl

            valid2=false
            if [[ $(cat "$zmp3newfileurl" | grep -E '128\.mp3' | head -n1 | wc -l) -gt 0 ]]; then

              valid2=true
              echo "ok with 128"
              url=$(cat $zmp3newfileurl | grep -E '128\.mp3' | head -n1)
              echo $url > $zmp3new128fileurl
              cat $zmp3new128fileurl

            elif [[ $(cat "$zmp3newfileurl" | grep -E '320\.mp3' | head -n1 | wc -l) -gt 0 ]]; then

              valid2=true
              echo "ok with 320"
              url=$(cat $zmp3newfileurl | grep -E '320\.mp3' | head -n1)
              echo $url > $zmp3new128fileurl
              cat $zmp3new128fileurl

            else

              echo "No dl file found!"

            fi

            echo $valid2
            if $valid2; then
              
              echo "wordpress process..."
              # echo "" >> $zcontentfile
              # echo '<!DOCTYPE html><html><head></head><body><audio controls preload="auto" autoplay><source src="'$url'" type="audio/mpeg"></audio></body></html>' >> $zcontentfile
              # echo "" >> $zcontentfile
              rm -f $zfile4
              touch $zfile4
              python3 test21_post_cat_tag_image_upload_fa.py

            fi
          
          else
            echo "Not valid mp3 urls to check!"
          fi
        
        else
            echo "No mp3 urls!"
        fi

        rm -f $zimagefile

      else
        echo "No image file found!"
      fi

    else
      echo "File is empty!"
    fi

    echo "$zline" >> $file2
    echo "**** Done! ****"
    sleep 5

  fi
done < "$file1"
