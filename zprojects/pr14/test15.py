from InstagramAPI import InstagramAPI

xpass = input("Enter your pass: ")

# Instagram credentials
username = "hithisisatestacc"
password = xpass

# Path to the video file
video_path = '/root/temp/temp.mp4'

# Create an instance of the InstagramAPI class
api = InstagramAPI(username, password)
api.login()

# Upload the video to Instagram
api.uploadVideo(video_path, caption='Check out this awesome video!')

# Logout from the Instagram account
api.logout()
