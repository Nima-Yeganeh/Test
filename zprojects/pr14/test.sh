rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIyMTI3MzAwMTg2ODY5Mjc3OF92MTIwNDRnZDAwMDBjZ3JocDNyYzc3dTVmdmV2NWwxMF9hdXN0aW4td2FyZQ%3D%3D2"
wget -O temp.mp4 "$url"
python3 post_igtv.py
