if [ $(stat -c%s "file.mp4") -lt 20000000 ]; then
    echo "File size is lower than 20 megabytes. OK"
else
    echo "File size is larger than or equal to 20 megabytes. Not OK"
fi
