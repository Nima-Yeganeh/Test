import os
import wordpress_xmlrpc
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.media import UploadFile
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

# Define the WordPress credentials
url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

client = Client(url, username, password)
post = WordPressPost()

post.post_type = 'post'
post.post_title = 'Example Post'
post.post_content = 'This is the content of the example post.'
post.thumbnail = '26'
post.terms_names = {'post_tag': ['tag11', 'tag22', 'tag33']}
post.post_status = 'publish'

post_id = client.call(NewPost(post))

print('New post created with ID:', post_id)
