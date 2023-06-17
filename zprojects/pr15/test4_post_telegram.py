# pip install python-telegram-bot
import asyncio
from telegram import Bot

user_input = input("Enter a string: ")

# Replace 'YOUR_TOKEN' with your Telegram bot token
bot_token = 'YOUR_TOKEN'
bot_token = user_input

# Replace 'CHANNEL_OR_CHAT_ID' with the ID of the channel or chat you want to send the message to
chat_id = 'CHANNEL_OR_CHAT_ID'
chat_id = '@viralvidforyou'

# Create a Bot instance
bot = Bot(token=bot_token)

# Define the message you want to send
message = "Hello, Telegram!"

async def send_telegram_message():
    # Send the message
    await bot.send_message(chat_id=chat_id, text=message)

# Create an asynchronous event loop
loop = asyncio.get_event_loop()

# Run the coroutine within the event loop
loop.run_until_complete(send_telegram_message())
