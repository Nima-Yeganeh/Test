# pip install python-telegram-bot
import asyncio
from telegram import Bot, InputFile
import sys
import os

if len(sys.argv) > 2:

    bot_token = sys.argv[1]
    chat_id = '@'+sys.argv[2]

    bot = Bot(token=bot_token)

    caption = 'Test!'

    mp4file = 'zmp4file.txt'
    mp4file_path = ''

    with open(mp4file, 'r') as file:
        lines = file.readlines()
    for line in lines:
        mp4file_path = line.strip()
        if os.path.isfile(mp4file_path) and os.path.getsize(mp4file_path) > 0:
            print("File exists and has size greater than zero:", mp4file_path)
            async def send_telegram_video():
                with open(mp4file_path, 'rb') as video_file:
                    await bot.send_video(chat_id=chat_id, video=InputFile(video_file), caption=caption)
            loop = asyncio.get_event_loop()
            loop.run_until_complete(send_telegram_video())
        else:
            print("File not found: ", mp4file_path)

else:
    print("No input provided.")

