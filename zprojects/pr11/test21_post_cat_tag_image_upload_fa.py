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

post.content = 'سلام. این توضیحات جدید برای پست می باشد. تشکر'
post.thumbnail = response['id']
# post.thumbnail = '26'
post.terms_names = {'category': ['Test Category 3 | گروه تست سوم'], 'post_tag': ['tag11 | تگ', 'tag22 | تگ', 'tag33 | تگ']}
# post.terms_names = {'post_tag': ['tag11', 'tag22', 'tag33']}
post.post_status = 'publish'

post_id = client.call(NewPost(post))

print('New post created with ID:', post_id)

