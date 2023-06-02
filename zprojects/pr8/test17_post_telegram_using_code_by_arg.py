# pip install python-telegram-bot
import asyncio
from telegram import Bot
import test10_my_encrypt_decrypt_module
import sys

if len(sys.argv) > 1:
    code = sys.argv[1]
    bot_token = test10_my_encrypt_decrypt_module.my_function(code, "tel_bot_token.txt")
    chat_id = test10_my_encrypt_decrypt_module.my_function(code, "tel_chat_id.txt")
    bot = Bot(token=bot_token)
    message = "Hello, Telegram!"
    async def send_telegram_message():
        await bot.send_message(chat_id=chat_id, text=message)
    loop = asyncio.get_event_loop()
    loop.run_until_complete(send_telegram_message())
else:
    print("No input provided.")
