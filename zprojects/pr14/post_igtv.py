from instagrapi import Client

xpass = input("Enter your pass: ")
username = "hithisisatestacc"
password = xpass
client = Client()
client.login(username, password)
media = client.igtv_upload('temp.mp4', title='newvid!', caption='Check out this awesome video!... #video #instagood #videooftheday #like4follow #short #happy #cute #tbt #followme #picoftheday #like4like #follow #me #selfie #art #instadaily #friends #nature #fun')
client.logout()
