#!/bin/bash

zstr="Tell_me_about_JavaScript_"

# Get a list of files in the current directory
files=$(ls data/)
# echo $files

# Loop through each file
for file in $files; do
	# Check if the file name contains the string to remove
	#echo $file
	if echo $file | grep -q "$zstr"; then
		#echo $file
		# Remove the string from the file name
		new_file=$(echo $file | sed "s/$zstr//")
		# Rename the file
		echo $new_file
		mv data/$file data/$new_file
	fi
done

