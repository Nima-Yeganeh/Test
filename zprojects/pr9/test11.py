from tiktok_scraper import TikTokScraper

# Create an instance of TikTokScraper
scraper = TikTokScraper()

# Specify the username of the TikTok user
username = "tiktok_user"

# Fetch user data using getUserProfile method
user_data = scraper.getUserProfile(username)

# Extract the desired information from the user data
user_id = user_data["user"]["id"]
follower_count = user_data["stats"]["followerCount"]
following_count = user_data["stats"]["followingCount"]
video_count = user_data["stats"]["videoCount"]

# Print the user data
print("Username:", username)
print("User ID:", user_id)
print("Follower Count:", follower_count)
print("Following Count:", following_count)
print("Video Count:", video_count)
