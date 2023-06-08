url="https://dl.next1.ir/files/2015/04/tak/HoseinEstiri-DivoonatamDivoone-128%28www.Next1.ir%29.mp3"

response=$(curl -s -I "$url")
if [[ "$response" == *"200 OK"* ]]; then
  echo "URL exists"
else
  echo "URL does not exist"
fi
