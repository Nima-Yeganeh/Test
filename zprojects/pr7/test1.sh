curl https://www.ldoceonline.com/dictionary/cambridge | grep -o '.*\.mp3' | sort | sed 's/<span data-src-mp3="//g' | sed 's/^[[:space:]]*//'
