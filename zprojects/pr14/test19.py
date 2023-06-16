from instagrapi import Client

xpass = input("Enter your pass: ")

# Create an instance of the Instagram client
client = Client()

# Login to Instagram
username = "hithisisatestacc"
password = xpass
client.login(username, password)

# Path to the video file
video_path = "temp.mp4"

# Path to the thumbnail image (optional)
thumbnail_path = "photo1.jpg"

# Caption for the video (optional)
caption = "Check out this awesome video!"

# Upload the video to Instagram
try:
    # Upload the video
    video = client.video_upload(video_path, thumbnail=thumbnail_path, caption=caption)

    # Print the media ID of the uploaded video
    print("Video uploaded successfully. Media ID:", video.pk)
except Exception as e:
    print("Error uploading video:", str(e))

# Logout from Instagram
client.logout()
