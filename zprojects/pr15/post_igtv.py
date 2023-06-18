# pip install instagrapi
from instagrapi import Client

xpass = input("Enter your pass: ")
username = "viralvidforyou"
password = xpass
client = Client()
client.login(username, password)
media = client.igtv_upload('temp.mp4', title='newvid!', caption='#explorepage #explore #awesome #video #instagood #videooftheday #like4follow #short #happy #cute #followme #picoftheday #like4like #art #instadaily #friends #fun #funny #lol #humor #comedy #laugh #viral #entertainment')
client.logout()
