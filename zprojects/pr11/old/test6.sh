url="https://dl.next1.ir/files/2015/04/tak/HoseinEstiri-DivoonatamDivoone-128%28www.Next1.ir%29.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
if [[ -n "$content_length" ]]; then
  if (( content_length > 1024 )); then
    echo "OK"
  else
    echo "Not valid"
  fi
else
  echo "Failed to determine file size"
fi

url="https://dl.next1.ir/files/2015/04/tak/AliAbbasi-Jodaei-128%28www.Next1.ir%29.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
if [[ -n "$content_length" ]]; then
  if (( content_length > 1024 )); then
    echo "OK"
  else
    echo "Not valid"
  fi
else
  echo "Failed to determine file size"
fi

url="https://test2-dl.nimayeganeh.ir/mp3-play.php?filename=HoseinEstiri-DivoonatamDivoone128.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
if [[ -n "$content_length" ]]; then
  if (( content_length > 1024 )); then
    echo "OK"
  else
    echo "Not valid"
  fi
else
  echo "Failed to determine file size"
fi
