import os
import wordpress_xmlrpc
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.media import UploadFile
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
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

post = WordPressPost()
post.title = 'My Video Post'
post.content = f'<video src="{video_url}" controls frameborder="0" type="video/mp4 width="320" height="240"></video>'
# post.content = 'Your post description'
tags = ['tag1', 'tag2', 'tag3']
post.terms_names = {
    'post_tag': tags
}
category = ['Test Category 3']
post.terms_names = {
    'category': category
}
post.post_status = 'publish'
post_id = client.call(NewPost(post))
print('New post created with ID:', post_id)

