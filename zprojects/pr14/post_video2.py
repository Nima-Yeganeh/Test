from instagrapi import Client
import userinfo

client = Client()
client.login(userinfo.username, userinfo.password)

# media = client.video_upload('temp.mp4', 'new vid...!')
media = client.igtv_upload('temp.mp4', title='title!', caption='caption!')

client.logout()
