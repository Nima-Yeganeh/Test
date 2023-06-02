cat test3.txt | grep -oP '(?<=<title>).*?(?=</title>)'
cat test3.txt | grep -oP '(?<=<h1>).*?(?=</h1>)'
cat test3.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<strong>).*?(?=</strong>)' | head -2
cat test3.txt | grep -oP '(?<=<p style="text-align: center;">).*?(?=</p>)' | grep -oP '(?<=<span style="color: #800000;">).*?(?=</span>)' | head -2 | tail -1

