rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIwMzU1OTYwODAzNDcyNTE2Nl92MTIwNDRnZDAwMDBjZnMydWZiYzc3dTUzZGZmY3M4Z19yaWNhcmRvLW5lbHNvbg%3D%3D2"
wget -O temp.mp4 "$url"
python3 post_igtv.py
