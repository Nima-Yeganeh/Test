#!/bin/bash

# Specify the input file
input_file="words.txt"

# Read the lines from the input file and shuffle them
lines=($(cat "$input_file" | shuf))

# Loop through the shuffled lines and write them to the output file
for line in "${lines[@]}"; do
  echo "$line"
  curl https://www.ldoceonline.com/dictionary/$line | grep -o '.*\.mp3' | sort | sed 's/<span data-src-mp3="//g' | sed 's/^[[:space:]]*//'
  sleep 2
done
