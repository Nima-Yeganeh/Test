from instagrapi import Client
import userinfo

class Minsta(Client):
    def _new_(cls) -> Client():
        cl = Client()
        # xpass = input("Enter your pass: ")
        # username = "hithisisatestacc"
        # password = xpass
        cl.login(userinfo.username, userinfo.password, relogin=ture)
        return cl
