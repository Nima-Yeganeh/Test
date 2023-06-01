# pip install python-telegram-bot

from telegram import Bot

# Replace 'YOUR_TOKEN' with your Telegram bot token
bot_token = 'YOUR_TOKEN'

# Replace 'CHANNEL_OR_CHAT_ID' with the ID of the channel or chat you want to send the message to
chat_id = 'CHANNEL_OR_CHAT_ID'

# Create a Bot instance
bot = Bot(token=bot_token)

# Define the message you want to send
message = "Hello, Telegram!"

# Send the message
bot.send_message(chat_id=chat_id, text=message)

