from instagrapi import Client

xpass = input("Enter your pass: ")

username = "hithisisatestacc"
password = xpass
video_path = "file.mp4"
thumbnail_path = "photo1.jpg"

client = Client()
client.login(username, password)

# Title for the IGTV video
title = "My IGTV Video"

# Caption for the IGTV video (optional)
caption = "Check out this awesome IGTV video!"

# Upload the video to IGTV
try:
    # Upload the video
    igtv = client.igtv_upload(video_path, thumbnail=thumbnail_path, title=title, caption=caption)

    # Print the IGTV media ID
    print("IGTV video uploaded successfully. Media ID:", igtv.pk)
except Exception as e:
    print("Error uploading IGTV video:", str(e))

# Logout from Instagram
client.logout()
