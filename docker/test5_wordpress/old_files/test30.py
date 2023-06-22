from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client
import requests
import base64

# Define the WordPress site URL and XML-RPC endpoint
url = 'https://your-wordpress-site.com/xmlrpc.php'

# Define your WordPress username and password
username = 'YOUR_USERNAME'
password = 'YOUR_PASSWORD'



url = 'https://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Define the external image URL you want to use as the featured image
external_image_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'


# Create a WordPress client object
client = Client(url, username, password)

# Define the post data (replace with your desired post title and content)
post = WordPressPost()
post.title = 'Your post title'
post.content = 'Your post content'
post.post_status = 'publish'

# Download the external image and encode it as a base64 string
response = requests.get(external_image_url)
image_data = base64.b64encode(response.content).decode('utf-8')

# Set the image as the featured image for the post using the WordPress XML-RPC API
attachment = {
    'name': 'image.jpg',
    'type': 'image/jpeg',
    'bits': xmlrpc_client.Binary(base64.b64decode(image_data))
}
attachment_id = client.call(NewPost('attachment', attachment))
post.thumbnail = attachment_id

# Create the post
post_id = client.call(NewPost(post))

# Print the ID of the newly created post
print(post_id)
