from instagrapi import Client
import userinfo

client = Client()
client.login(userinfo.username, userinfo.password)

media = client.photo_upload('photo2.jpg', 'test2!')

client.logout()
