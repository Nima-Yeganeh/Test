# pip install instapy

from instapy import InstaPy

# Set up your InstaPy session
session = InstaPy(username='your_username', password='your_password')
session.login()

# End the session and logout
session.end()
