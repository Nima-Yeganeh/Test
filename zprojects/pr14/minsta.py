from instagrapi import Client

class Minsta(Client):
    def _new_(cls) -> Client():
        cl = Client()
        xpass = input("Enter your pass: ")
        username = "hithisisatestacc"
        password = xpass
        cl.login(username, password, relogin=ture)
        return cl
