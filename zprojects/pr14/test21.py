import instagrapi
from instagrapi import Client
from instagrapi.types import Resource

xpass = input("Enter your pass: ")

username = "hithisisatestacc"
password = xpass
video_path = "file.mp4"

# Login to your Instagram account
client = Client()
client.login(username, password)

# Upload the video
video = Resource(video_path)
media = client.post_video(video)

# Logout
client.logout()
