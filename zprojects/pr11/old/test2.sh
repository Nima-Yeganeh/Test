url=$(cat zmp3newfileurl.txt | grep '128.mp3')
echo ""
echo '<audio controls preload="auto" autoplay><source src="'$url'" type="audio/mpeg"></audio>'
echo ""


