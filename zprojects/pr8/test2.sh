wget -O test2.txt https://next1.ir/%d8%b1%d8%b3%d8%aa%d8%a7%da%a9-%d8%a8%d8%b9%d8%af-%d9%85%d9%86/
cat test2.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' >> test2_temp.txt
cat test2.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' >> test2_temp.txt
rm -f test2_result.txt
cat test2_temp.txt | sort | uniq >> test2_result.txt
rm -f test2_temp.txt
cat test2_result.txt

