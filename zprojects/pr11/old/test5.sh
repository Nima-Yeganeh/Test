url="https://dl.next1.ir/files/2015/04/tak/HoseinEstiri-DivoonatamDivoone-128%28www.Next1.ir%29.mp3"

headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')

if [[ -n "$content_length" ]]; then
  echo "File size: $content_length bytes"
else
  echo "Failed to determine file size"
fi

