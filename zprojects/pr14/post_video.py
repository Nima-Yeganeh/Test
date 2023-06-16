from instagrapi import Client
import userinfo

client = Client()
client.login(userinfo.username, userinfo.password)

media = client.photo_upload('file.mp4', 'video!')

client.logout()
