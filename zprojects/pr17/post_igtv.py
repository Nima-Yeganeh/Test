# pip install instagrapi
from instagrapi import Client
import sys
import os

if len(sys.argv) > 2:

    username = sys.argv[1]
    password = sys.argv[2]

    captionfile = 'zinstacontentfile.txt'
    caption = ''
    with open(captionfile, 'r') as file:
        caption = file.read()

    mp4file = 'zmp4file.txt'
    mp4file_path = ''
    with open(mp4file, 'r') as file:
        lines = file.readlines()
    for line in lines:
        mp4file_path = line.strip()
        if os.path.isfile(mp4file_path) and os.path.getsize(mp4file_path) > 0:
            print("File exists and has size greater than zero:", mp4file_path)
            client = Client()
            client.login(username, password)
            media = client.igtv_upload(mp4file_path, title='newvid!', caption=caption)
            client.logout()
        else:
            print("File not found: ", mp4file_path)

else:
    print("No input provided.")
    