wget -O test3.txt https://next1.ir/%d8%b1%d8%b3%d8%aa%d8%a7%da%a9-%d8%a8%d8%b9%d8%af-%d9%85%d9%86/
rm -f test3_result.txt
cat test3.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 >> test3_result.txt
cat test3_result.txt

