              echo "" >> $zcontentfile
              while IFS= read -r ylink; do
                echo "$ylink"
                ylinkfile=$(basename "$ylink")
                echo '<a href="'$ylink'" download="'$ylinkfile'">Download MP3 File: '$ylinkfile'لینک دانلود فایل </a>'
              done < "$zmp3newfileurl"
              