#!/bin/bash

# Set the search query
query="$1"

# Set the output directory
output_dir="$2"

# Set the number of images to download
num_images=10

# Install the google-images-download package if not already installed
if ! command -v googleimagesdownload &> /dev/null
then
    echo "google-images-download package not found. Installing..."
    pip install google-images-download
fi

# Search for the images using googleimagesdownload
googleimagesdownload -k "${query}" -l "${num_images}" -o "${output_dir}"
