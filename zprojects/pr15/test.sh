echo "Enter a 40-character code: "
read code
Tel_Bot_Token=$(python3 test_decrypt_full_arg.py 1 $code)
Tel_Chat_ID=$(python3 test_decrypt_full_arg.py 2 $code)
rm -f temp.mp4
url="https://snaptik.app/file.php?token=1NzIzNTQ3Mzg2Njk3MjIyMDY3OF92MDkwNDRnNDAwMDBjaGtwMTdiYzc3dWVhcnQzYzdlMF9hbmdlbGl0bw%3D%3D2"
wget -O temp.mp4 "$url"
echo 'temp.mp4' > zmp4file.txt
python3 test18_post_telegram_content_using_code_by_arg.py $Tel_Bot_Token $Tel_Chat_ID
