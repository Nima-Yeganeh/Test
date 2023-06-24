ffmpeg -i file.mp4 -vf "scale=-2:240" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 96k output.mp4
