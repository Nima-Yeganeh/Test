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
channel_id = chat_id

# Create a Bot instance
bot = Bot(token=bot_token)

# Define the path to the MP3 file
mp3_path = 'audio2.mp3'

# Define the caption for the post
caption = 'Check out this amazing audio!'

async def send_telegram_audio():
    # Send the audio with caption
    with open(mp3_path, 'rb') as audio_file:
        await bot.send_audio(chat_id=channel_id, audio=InputFile(audio_file), caption=caption)

# Create an asynchronous event loop
loop = asyncio.get_event_loop()

# Run the coroutine within the event loop
loop.run_until_complete(send_telegram_audio())
