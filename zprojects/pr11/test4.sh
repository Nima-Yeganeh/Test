url="https://dl.next1.ir/files/2015/04/tak/HoseinEstiri-DivoonatamDivoone-128%28www.Next1.ir%29.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
echo $headers
echo $content_length

url="https://dl.next1.ir/files/2015/04/tak/AliAbbasi-Jodaei-128%28www.Next1.ir%29.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
echo $headers
echo $content_length

url="https://dl.next1.ir/files/2015/04/tak/AmirKian-BehemTekyehKon-128%28www.Next1.ir%29.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
echo $headers
echo $content_length

url="https://test2-dl.nimayeganeh.ir/mp3-play.php?filename=HoseinEstiri-DivoonatamDivoone128.mp3"
echo $url
headers=$(curl -sI "$url")
content_length=$(echo "$headers" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
echo $headers
echo $content_length

