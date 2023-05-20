from instabot import Bot
bot.login(username="",password="")
tags=['python','bot','coding']
for i in tags:
    bot.like_hashtag(i,amount=10)
