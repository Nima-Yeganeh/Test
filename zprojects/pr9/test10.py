from TikTokApi import TikTokApi

# Create an instance of TikTokApi
api = TikTokApi()

# Specify the username of the TikTok user
username = "tiktok_user"

# Fetch user data using get_user method
user_data = api.get_user(username)

# Extract the desired information from the user data
user_id = user_data["userInfo"]["user"]["id"]
follower_count = user_data["userInfo"]["stats"]["followerCount"]
following_count = user_data["userInfo"]["stats"]["followingCount"]
video_count = user_data["userInfo"]["stats"]["videoCount"]

# Print the user data
print("Username:", username)
print("User ID:", user_id)
print("Follower Count:", follower_count)
print("Following Count:", following_count)
print("Video Count:", video_count)
