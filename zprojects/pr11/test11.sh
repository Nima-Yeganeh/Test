url="https://next1.ir/wp-content/uploads/2023/06/RezaYazdani-Derakht-480x480.jpg"
url="https://next1.ir/wp-content/uploads/2021/09/MiladBabaei-KhoobitoMikhastam-1-480x480.jpg"
validjpg=0
# wget -O z.jpg -o z.txt $url
rm -f z.jpg
touch z.jpg
while [ ! -s z.jpg ]; do
  wget -O z.jpg -o z.txt $url
  errorcheck200=$(cat z.txt | grep '200' | wc -l)
  errorcheck404=$(cat z.txt | grep '404' | wc -l)
  # echo $errorcheck
  if [[ $errorcheck200 -ge 1 ]]; then
    validjpg=200
    break
  elif [[ $errorcheck404 -ge 1 ]]; then
    validjpg=404
    break
  fi
  echo $validjpg
  sleep 1
done
echo $validjpg
if [[ $validjpg -eq 200 ]]; then
  echo "Valid JPG: 200"
elif [[ $validjpg -eq 404 ]]; then
  echo "JPG Not Found: 404"
else
  echo "JPG Unknown Status: $validjpg"
fi

