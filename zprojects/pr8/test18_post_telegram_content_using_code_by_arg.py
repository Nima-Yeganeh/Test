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
    photo = 'zjpgfile.txt'
    photo_path = 'file1.jpg'
    caption = 'Check out this cool photo!'
    # Open the photo file and send the API request
    with open(photo_path, 'rb') as photo_file:
        # Set the parameters for the API request
        params = {'chat_id': chat_id, 'caption': caption}
        # Set the files parameter for the API request
        files = {'photo': photo_file}
        # Send the API request using the requests library
        response = requests.post(url, params=params, files=files)
    # Check the response status code to make sure the photo was sent successfully
    if response.status_code == 200:
        print('Photo sent successfully!')
    else:
        print('Error sending photo:', response.status_code)
else:
    print("No input provided.")

