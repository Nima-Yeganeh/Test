from tiktok_scraper import TikTokScraper

# Create an instance of TikTokScraper
scraper = TikTokScraper()

# Specify the username of the TikTok user
username = "tiktok_user"

# Fetch user data using getUserProfile method
user_data = scraper.get_user_profile(username)

# Extract the desired information from the user data
user_id = user_data["user_id"]
follower_count = user_data["follower_count"]
following_count = user_data["following_count"]
video_count = user_data["video_count"]

# Print the user data
print("Username:", username)
print("User ID:", user_id)
print("Follower Count:", follower_count)
print("Following Count:", following_count)
print("Video Count:", video_count)
