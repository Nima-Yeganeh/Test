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

# Connect to the WordPress client
client = Client(url, username, password)

# Create a new post
post = WordPressPost()

# Create a new post object
post = {
    'post_type': 'post',
    'post_title': 'Example Post',
    'post_content': 'This is the content of the example post.',
    'post_status': 'publish',
    'terms_names': {
        'post_tag': ['tag11', 'tag22', 'tag33']  # Assign existing tags to the post
    }
}

# Upload the image file
image_path = 'file1.jpg'

with open(image_path, 'rb') as img:
    data = img.read()
filename = os.path.basename(image_path)
file = {'name': filename, 'type': 'image/jpeg', 'bits': xmlrpc_client.Binary(data)}
response = client.call(UploadFile(file))

# Set the image as the featured image of the post
post.thumbnail = response['id']

# Publish the post
post.post_status = 'publish'

# Create the new post on WordPress
post_id = client.call(NewPost(post))

# Print the post ID
print('New post created with ID:', post_id)

