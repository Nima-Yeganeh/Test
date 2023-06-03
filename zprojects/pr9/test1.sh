wget -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299" -O test1sh.txt "https://www.tiktok.com/foryou"
# cat test1sh.txt | grep -o '"UrlList":\["[^"]*"' | sed 's/"UrlList":\["//' | sed 's/"$//'
cat test1sh.txt | grep -o '"UrlList":\["[^"]*"' | sed 's/"UrlList":\["//' | sed 's/"$//' | sed 's/u002F//g' | sed 's/\\/\//g'

