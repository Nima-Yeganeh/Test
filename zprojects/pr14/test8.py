# pip install InstagramAPI

from InstagramAPI import InstagramAPI

# Set up your InstagramAPI session
api = InstagramAPI("your_username", "your_password")
api.login()

# Define the path to your image file and caption
image_path = 'path_to_your_image_file'
caption = 'Your image caption goes here'

# Upload the image and caption
api.uploadPhoto(image_path, caption=caption)

# Logout of your Instagram account
api.logout()
