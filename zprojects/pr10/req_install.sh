sudo apt install youtube-dl -y
sudo apt install yt-dlp
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux
mv yt-dlp_linux yt-dlp
chmod +x yt-dlp
sudo mv yt-dlp /usr/bin/
yt-dlp -U
yt-dlp --help
