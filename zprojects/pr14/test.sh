rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIwNDY3MDc0NTc2MTM2OTM5MF92MTIwNDRnZDAwMDBjZnUyMzJyYzc3dWVyYWdjbTBoZ19nYW5hc2NvbmNhbmFz2"
wget -O temp.mp4 "$url"
python3 post_igtv.py
