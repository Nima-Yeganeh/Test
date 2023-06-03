from TikTokApi import TikTokApi
import pandas as pd
api = TikTokApi()

def inputUserID():
  userName = input("Enter Username: ")
  userInfo = api.get_user(userName)
  userID = userInfo['id']
  secUID = userInfo['secUid']
  return userID, secUID

def getUserVideos(userDefID, secDefUID):  
  # Sets up a few variables that will be used throughout the code
  cursorValue = 0
  hasMore = True
  df = pd.DataFrame()
  # Function to pull video data until all have been pulled
  while hasMore:
    # Makes initial call to the API
    TikTokList = api.user_page(userID=userDefID,
    secUID=secDefUID,
    cursor=cursorValue)
    # Function used to clean
    data = cleanData(TikTokList['itemList'])
    df = df.append(data)
    # updates our variables based on the latest scrape
    cursorValue = int(TikTokList['cursor'])
    hasMore = TikTokList['hasMore']
  else:
    print("No more data")
    df.to_csv('UserVideos.csv')

userInfo = inputUserID()
getUserVideos(userInfo[0], userInfo[1])
