from instagrapi import Client

xpass = input("Enter your pass: ")

# Create an instance of the Client class
client = Client()

# Log in to your Instagram account
username = "hithisisatestacc"
password = xpass
client.login(username, password)

# Path to the video file you want to upload
video_path = "/root/temp/temp.mp4"

# Prepare the video for upload
# video = client.video_upload_prepare(video_path)
video = client.video_upload_to_direct(video_path)

# Set the caption for the video
caption = "Check out this awesome video!"

# Upload the video
media = client.video_upload(video, caption=caption)

# Print the URL of the uploaded video
print("Video uploaded successfully!")
print("URL:", media.url)

# Log out from the Instagram account
client.logout()
