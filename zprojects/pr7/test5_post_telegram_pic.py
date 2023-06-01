# pip install python-telegram-bot
import asyncio
from telegram import Bot, InputFile

user_input = input("Enter a string: ")

# Replace 'YOUR_TOKEN' with your Telegram bot token
bot_token = 'YOUR_TOKEN'
bot_token = user_input

# Replace 'CHANNEL_OR_CHAT_ID' with the ID of the channel or chat you want to send the message to
chat_id = 'CHANNEL_OR_CHAT_ID'
chat_id = '@mynewxyztestbot_botchannel'

# Create a Bot instance
bot = Bot(token=bot_token)

# Define the path to the image file
image_path = 'pic2.jpg'

# Define the caption for the post
caption = 'Check out this amazing picture!'

# Send the image with caption
with open(image_path, 'rb') as image_file:
    bot.send_photo(chat_id=channel_id, photo=InputFile(image_file), caption=caption)

