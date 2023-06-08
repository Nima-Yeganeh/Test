zmp3fileurl="zmp3fileurl.txt"

valid=true

while IFS= read -r url; do
  
  echo $url
  headers=$(curl -sI "$url")
  content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')

  if [[ -n "$content_length" ]]; then
    if (( content_length <= 1024 )); then
      valid=false
      break
    fi
  else
    valid=false
    break
  fi

done < "$zmp3fileurl"

if $valid; then
  echo "OK"
else
  echo "Not valid"
fi
