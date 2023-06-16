from instagrapi import Client
from instagrapi.exceptions import ClientLoginRequired

# Set up your instagrapi session
client = Client()
client.login("user", "pass")

# Define the Instagram tag to search for
tag = "food"

# Find posts with the given tag
try:
    media_list = client.search_tag(tag)
    for media in media_list:
        # Follow the user
        client.user_follow(media.user.pk)
        # Like the post
        client.post_like(media.pk)
except ClientLoginRequired as e:
    print(f"Could not log in: {e}")

# Logout of your Instagram account
client.logout()
