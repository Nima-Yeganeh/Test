from TikTokApi import TikTokApi
import pandas as pd

api = TikTokApi()

# Use the TikTokApi instance to perform actions or fetch TikTok data
# For example, you can fetch trending TikToks:
trending = api.trending()

# Convert the data to a pandas DataFrame for further processing or analysis
df = pd.DataFrame(trending)

# Print the DataFrame
print(df)
