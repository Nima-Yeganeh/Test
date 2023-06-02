wget -O test6.txt https://next1.ir/%d8%b1%d8%b3%d8%aa%d8%a7%da%a9-%d8%a8%d8%b9%d8%af-%d9%85%d9%86/
cat test6.txt | grep -o '.*\.mp3' | grep -oP 'href="\K[^"]+' >> test6_temp.txt
cat test6.txt | grep -o '.*\.mp4' | grep -oP 'href="\K[^"]+' >> test6_temp.txt
rm -f test6_result.txt
cat test6_temp.txt | sort | uniq >> test6_result.txt
rm -f test6_temp.txt
# cat test6_result.txt
# wget -O test6.txt https://next1.ir/%d8%b1%d8%b3%d8%aa%d8%a7%da%a9-%d8%a8%d8%b9%d8%af-%d9%85%d9%86/
# rm -f test6_result.txt
cat test6.txt | grep -o '.*\.jpg' | grep -oP 'src="\K[^"]+' | grep 480 >> test6_result.txt
cat test6_result.txt
cat test6.txt | grep -oP '(?<=<title>).*?(?=</title>)'
cat test6.txt | grep -oP '(?<=<h1>).*?(?=</h1>)'
cat test6.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2
# cat test6.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1
cat test6.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1 | grep -vE '<a\s|http'
# cat test6.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g'
cat test6.txt | grep -o '.*<br />' | sed 's/<p style="text-align: center;">//g' | sed 's/^[[:space:]]*//' | sed 's/<br \/>//g' | grep -vE '<a\s|http'


