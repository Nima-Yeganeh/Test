from TikTokApi import TikTokApi
import pandas as pd

# Create an instance of the TikTokApi
api = TikTokApi()

# Specify the username of the TikTok user
username = "tiktok_user"

# Fetch user data using TikTokApi.getUser()
user_data = api.getUser(username)

# Extract the desired information from the user data
user_id = user_data["user"]["id"]
follower_count = user_data["stats"]["followerCount"]
following_count = user_data["stats"]["followingCount"]
video_count = user_data["stats"]["videoCount"]

# Create a dictionary to store the extracted data
data = {
    "Username": username,
    "User ID": user_id,
    "Follower Count": follower_count,
    "Following Count": following_count,
    "Video Count": video_count
}

# Create a Pandas DataFrame from the data dictionary
df = pd.DataFrame([data])

# Print the DataFrame
print(df)
