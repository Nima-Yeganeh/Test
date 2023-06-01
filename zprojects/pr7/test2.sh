#!/bin/bash

echo "Please enter a word: "
read word
echo "You entered: $word"
curl https://www.ldoceonline.com/dictionary/$word | grep -o '.*\.mp3' | sort | sed 's/<span data-src-mp3="//g' | sed 's/^[[:space:]]*//'
