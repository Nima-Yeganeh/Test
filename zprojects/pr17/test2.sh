title=$(cat test1.txt | grep 'name' | grep -oP '(?<=name": ")[^"]*' | head -n1)
echo $title
