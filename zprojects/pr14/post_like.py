from instagrapi import Client
import time
import random

xpass = input("Enter your pass: ")
username = "hithisisatestacc"
password = xpass

cl = Client()
cl.login(username, password)

class LikePost:
    def __init__(self, client):
        self.cl = client
        self.tags = ['follow', 'instadaily', 'like4like']
        self.liked_medias = []
        self.elapsed_time = 0

    def wait_time(self, delay):
        time.sleep(delay)

    def get_post_id(self):
        medias = cl.hashtag_medias_recent(random.choice(self.tags), amount=1)
        media_dict = medias[0].dict()
        return str(media_dict['id'])

    def like_post(self, amount):
        for i in range(amount):
            random_post = self.get_post_id()
            if random_post in self.liked_medias:
                pass
            else:
                self.cl.media_like(media_id=random_post)
                self.liked_medias.append(random_post)
                random_delay = random.randint(20,60)
                self.elapsed_time = self.elapsed_time + random_delay
                print(f"Liked {len(self.liked_medias)} posts")
                self.wait_time(random_delay)


start = LikePost(cl)
start.like_post(600)

cl.logout()
