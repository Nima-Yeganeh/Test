import os
import wordpress_xmlrpc
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.media import UploadFile
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

url = 'https://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

client = Client(url, username, password)

# video_path = 'C:/Users/Nimay/nima_git/Test/docker/test5_wordpress/file.mp4'
video_path = 'file.mp4'

with open(video_path, 'rb') as vidobj:
    data = vidobj.read()
filename = os.path.basename(video_path)
file = {'name': filename, 'type': 'video/mp4', 'bits': xmlrpc_client.Binary(data)}
response = client.call(UploadFile(file))
video_url = response['url']
print(video_url)
