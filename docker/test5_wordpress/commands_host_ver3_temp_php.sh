vol="test5_wordpress_php1_data"
newpath=$(docker volume inspect $vol | grep Mountpoint | grep '"Mountpoint": "[^"]*"' | awk -F'"' '{print $4}')
echo $newpath
ls -anp $newpath
cp src/index.php $newpath
cp src/index.htm $newpath
cp src/index.html $newpath
cp src/file1.txt $newpath
cp src/file2.txt $newpath
cp src/mp3-download.php $newpath
cp src/mp3-play.php $newpath
ls -anp $newpath
