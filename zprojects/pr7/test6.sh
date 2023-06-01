#!/bin/bash

# Specify the input file
input_file="words.txt"

# Read the lines from the input file and shuffle them
lines=($(cat "$input_file" | shuf))

# Loop through the shuffled lines and write them to the output file
for line in "${lines[@]}"; do
  echo "$line"
  sleep 2
done
