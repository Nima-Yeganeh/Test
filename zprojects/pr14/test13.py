# pip install instabot
from instabot import Bot

xpass = input("Enter your pass: ")

# Create an instance of the Bot class
bot = Bot()

# Log in to your Instagram account
username = "hithisisatestacc"
password = xpass
bot.login(username=username, password=password)

# Path to the video file
video_path = "/root/temp/temp.mp4"

# Upload the video to Instagram
bot.upload_video(video_path, caption="Check out this awesome video!")

# Log out from the Instagram account
bot.logout()

