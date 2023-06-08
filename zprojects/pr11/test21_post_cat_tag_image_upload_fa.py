import os
import wordpress_xmlrpc
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.media import UploadFile
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'
ztitlefile = "ztitlefile.txt"
zcontentfile = "zcontentfile.txt"
zcatfile = "zcatfile.txt"

client = Client(url, username, password)

post = WordPressPost()

image_path = 'file1.jpg'
with open(image_path, 'rb') as img:
    data = img.read()
filename = os.path.basename(image_path)
file = {'name': filename, 'type': 'image/jpeg', 'bits': xmlrpc_client.Binary(data)}
response = client.call(UploadFile(file))

post.post_type = 'post'

# Read the file contents into a variable
with open(ztitlefile, 'r') as file:
    file_contents = file.read()
post.title = file_contents

# Read the file contents into a variable
with open(zcontentfile, 'r') as file:
    file_contents = file.read()
post.content = file_contents

post.thumbnail = response['id']

# Read the file contents into a variable
with open(zcatfile, 'r') as file:
    file_contents = file.read()
zcat = file_contents

# ztag = ['tag11 | تگ', 'tag22 | تگ', 'tag33 | تگ']
# string = "How Are You"
# Split the string into words
# words = string.split()
# Create a new formatted string with single quotes and commas
# formatted_string = ', '.join(f"'{word}'" for word in words)
# Print the formatted string
# print(formatted_string)
# ztag = formatted_string
# print(ztag)

string = post.title
# Split the string into words
words = string.split()
# Create a new list with single quotes for each word
ztag = [f"'{word}'" for word in words]
post.terms_names = {'category': [zcat], 'post_tag': ztag}

post.post_status = 'publish'

post_id = client.call(NewPost(post))

print('New post created with ID:', post_id)

