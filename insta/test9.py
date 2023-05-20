# pip install instagrapi

from instagrapi import Client
from instagrapi.exceptions import ClientLoginRequired

# Set up your instagrapi session
client = Client()
client.login("nimaxyeganeh", "")

# Define the path to your image file and caption
image_path = 'C:/Users/Nimay/nima_git/Test/insta/photo2.jpg'
caption = "Lena was a busy mom who struggled to find time for healthy meals. She started cooking with vegetables and discovered how easy and delicious it could be. By incorporating vegetables into her meals, Lena found that she had more energy and felt fuller for longer. Vegetables are low in calories but high in fiber, vitamins, and minerals, which can help support a healthy immune system and reduce the risk of chronic diseases. Lena also discovered that cooking with vegetables could be a fun and creative way to try new recipes and experiment with different flavors and textures. She started making vegetable stir-fries, soups, and salads, and even replaced meat with veggies in some of her favorite dishes. Lena learned that by making small changes in her diet, she could make a big difference in her health and wellbeing. #drinks #food #restaurants #cooking #experience #likeforlike #instadaily"
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
