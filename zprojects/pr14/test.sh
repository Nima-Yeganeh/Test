rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIyMzgyNTU2OTI2NjI4OTkyMl92MTAwNDRnNTAwMDBjaDAydGxyYzc3dWE1cW1zNjRpMF9kaWFuYS1iZWxpdHNrYXk%3D2"
wget -O temp.mp4 "$url"
python3 post_igtv.py
