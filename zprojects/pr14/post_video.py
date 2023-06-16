from instagrapi import Client
import userinfo

client = Client()
client.login(userinfo.username, userinfo.password)

media = client.video_upload('file.mp4', 'video!')

client.logout()
