# pip install InstagramAPI
from InstagramAPI import InstagramAPI

xpass = input("Enter your pass: ")

# Set up your InstagramAPI session
api = InstagramAPI("hithisisatestacc", xpass)
api.login()

# Define the path to your image file and caption
image_path = 'photo1.jpg'
caption = 'Your image caption goes here'

# Upload the image and caption
api.uploadPhoto(image_path, caption=caption)

# Logout of your Instagram account
api.logout()
