#!/bin/bash

# Replace "SEARCH_TERM" with your desired search query
search_query="apple"

# Perform Google search and store the HTML response in a variable
html=$(curl -s "https://www.google.com/search?q=${search_query}&tbm=isch")

# Use grep and sed to extract the image URLs from the HTML
image_urls=$(echo "$html" | grep -oE 'http[s]?://[^[:space:]"'\'']+\.(png|jpg|jpeg|gif|bmp)' | sed 's/^.*\("http[^"]*"\).*$/\1/')

# Loop through the image URLs and display them
for url in $image_urls; do
  echo "$url"
done
