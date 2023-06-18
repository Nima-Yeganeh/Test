url="https://www.tiktok.com/@lafamilia_lopez/video/7205261515639803182"
number=$(echo "$url" | grep -oE '[0-9]+')
echo "Number: $number"
