from instagrapi import Client
import userinfo

client = Client()
client.login(userinfo.username, userinfo.password)

media = client.video_upload('temp.mp4', 'new vid...!')

client.logout()
