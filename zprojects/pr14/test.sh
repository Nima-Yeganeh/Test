rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIxMjI2NTAxNzk5Mzk1NjY1NF92MTIwNDRnZDAwMDBjZ2JobzlyYzc3dTBqaDU0Z3F2MF9zYW5qYXlh2"
wget -O temp.mp4 "$url"
python3 post_igtv.py
