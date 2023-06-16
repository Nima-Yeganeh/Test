from instagrapi import Client
import userinfo

cl = Client()
cl.login(userinfo.username, userinfo.password, relogin=ture)
