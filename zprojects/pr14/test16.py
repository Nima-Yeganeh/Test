from instapy_cli import client

xpass = input("Enter your pass: ")
username = "hithisisatestacc"
password = xpass
video = '/root/temp/file.mp4'
text = 'This will be the caption of your video.' + '\r\n' + 'You can also use hashtags! #hash #tag #now'

with client(username, password) as cli:
    cli.upload(video, text)
