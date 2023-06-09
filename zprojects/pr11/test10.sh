              
while IFS= read -r ylink; do
  echo "$ylink" | sed 's/mp3-play.php/mp3-download.php/g'
  ylinkfile=$(basename "$ylink" | sed 's/mp3-play.php?filename=//g')
  echo $ylinkfile
  echo '<a href="'$ylink'" download="'$ylinkfile'">Download MP3 File: '$ylinkfile'لینک دانلود فایل </a>'
done < "zmp3newfileurl.txt"
              

