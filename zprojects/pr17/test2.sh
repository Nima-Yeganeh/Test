title=$(cat test1.txt | grep 'name' | grep -oP '(?<=name": ")[^"]*' | head -n1)
echo $title
desc=$(cat test1.txt | grep 'description' | grep -oP '(?<=description": ")[^"]*' | head -n1)
echo $desc
tags=$(cat test1.txt | grep 'og:video:tag' | grep -oP '(?<=<meta property="og:video:tag" content=")[^"]*' | sed 's/^[[:space:]]*//' | sed 's/^[[:space:]]*/#/')
echo $tags
