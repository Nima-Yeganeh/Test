# pip install instagrapi
from instagrapi import Client
from instagrapi.exceptions import ClientLoginRequired

xpass = input("Enter your pass: ")

# Set up your instagrapi session
client = Client()
client.login("hithisisatestacc", xpass)

# Define the path to your image file and caption
image_path = 'photo1.jpg'
caption = "New Pic! #drinks #food #restaurants #cooking #experience #likeforlike #instadaily"
# caption = '#drinks #food #restaurants #cooking #experience #likeforlike #instadaily'

# Upload the image and caption
try:
    media = client.photo_upload(image_path, caption=caption)
    # client.photo_configure(media.pk, media.json_data["upload_id"], caption=caption)
    # client.feed_timeline().upload_album([media.pk])
except ClientLoginRequired as e:
    print(f"Could not log in: {e}")

# Logout of your Instagram account
client.logout()
