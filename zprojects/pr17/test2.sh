title=$(cat test1.txt | grep 'name' | grep -oP '(?<=name": ")[^"]*' | head -n1)
echo $title
desc=$(cat test1.txt | grep 'description' | grep -oP '(?<=description": ")[^"]*' | head -n1)
echo $desc
