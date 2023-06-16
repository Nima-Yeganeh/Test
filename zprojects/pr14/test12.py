from instagrapi import Client

xpass = input("Enter your pass: ")

# Create an instance of the Client class
client = Client()

# Log in to your Instagram account
username = "hithisisatestacc"
password = xpass
client.login(username, password)

# Path to the video file
video_path = "/root/temp/temp.mp4"

# Upload the video to Instagram
media = client.video_upload(video_path, caption="test!")

# Print the URL of the uploaded video
print("Video uploaded successfully!")
print("URL:", media.url)

# Log out from the Instagram account
client.logout()
