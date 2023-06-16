# pip install instapy-cli
from instapy_cli import client

xpass = input("Enter your pass: ")

# Path to the video file
video_path = "/root/temp/temp.mp4"

# Instagram credentials
username = "hithisisatestacc"
password = xpass

# Caption for the video
caption = "Check out this awesome video!"

# Upload the video to Instagram
with client(username, password) as cli:
    cli.upload(video_path, caption=caption)
