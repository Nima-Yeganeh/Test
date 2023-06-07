cat test8.txt | grep -n '<p style="text-align: center;"><span id="more-' | cut -d: -f1

# Find line number(s) for string1
string1_line_numbers=$(grep -n '<p style="text-align: center;"><span id="more-' test8.txt | cut -d: -f1)

# Read lines from string1_line_numbers until string2 is found
while read line; do
    if [[ $line == *post-footer* ]]; then
        # Found string2, exit loop
        break
    fi
    echo $line
done < <(awk "NR>=$string1_line_numbers" test8.txt)
