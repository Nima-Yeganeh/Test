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
    photofile = 'zjpgfile.txt'
    photo_path = ''  
    with open(photofile, 'r') as file:
        content = file.readlines()
    if content:
        photo_path = content[0].strip()
        print(photo_path)
    else:
        print("File is empty.")
    captionfile = 'zcontentfile.txt'
    caption = ''
    with open(captionfile, 'r') as file:
        caption = file.read()
    print(caption)
    photo_path = 'Rastaak-BadeMan-480x480.jpg'
    async def send_telegram_photo():
        with open(photo_path, 'rb') as image_file:
            await bot.send_photo(chat_id=chat_id, photo=InputFile(image_file), caption=caption)
    loop = asyncio.get_event_loop()
    loop.run_until_complete(send_telegram_photo())
else:
    print("No input provided.")

