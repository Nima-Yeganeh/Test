# /usr/local/lib/python3.10/dist-packages/instapy_cli/media.py

from instapy_cli import client

xpass = input("Enter your pass: ")
username = "hithisisatestacc"
password = xpass
image = 'photo1.jpg'
text = 'This will be the caption of your photo.' + '\r\n' + 'You can also use hashtags! #hash #tag #now'

with client(username, password) as cli:
    cli.upload(image, text)
