# pip install python-telegram-bot
import asyncio
from telegram import Bot
import test10_my_encrypt_decrypt_module

code = input("Enter a 4-character code: ")
user_input = input("Enter a string: ")

# bot_token = 'YOUR_TOKEN'
bot_token = test10_my_encrypt_decrypt_module.my_function(code, "tel_bot_token.txt")
print(bot_token)

# chat_id = 'CHANNEL_OR_CHAT_ID'
chat_id = test10_my_encrypt_decrypt_module.my_function(code, "tel_chat_id.txt")
print(chat_id)

bot = Bot(token=bot_token)
message = "Hello, Telegram!"

async def send_telegram_message():
    await bot.send_message(chat_id=chat_id, text=message)
loop = asyncio.get_event_loop()
loop.run_until_complete(send_telegram_message())

