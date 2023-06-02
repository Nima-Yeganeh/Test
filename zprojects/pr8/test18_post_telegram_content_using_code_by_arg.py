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
        # print(photo_path)
    else:
        print("File is empty.")
    captionfile = 'zcontentfile.txt'
    caption = ''
    with open(captionfile, 'r') as file:
        caption = file.read()
    # print(caption)
    with open(photo_path, 'rb') as photo_file:
        params = {'chat_id': chat_id, 'caption': caption}
        files = {'photo': photo_file}
        response = requests.post(url, params=params, files=files)
    if response.status_code == 200:
        print('Photo sent successfully!')
    else:
        print('Error sending photo:', response.status_code)
else:
    print("No input provided.")

