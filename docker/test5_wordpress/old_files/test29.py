from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

# Define the WordPress site URL and XML-RPC endpoint
url = 'https://your-wordpress-site.com/xmlrpc.php'

# Define your WordPress username and password
username = 'YOUR_USERNAME'
password = 'YOUR_PASSWORD'

url = 'https://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Create a WordPress client object
client = Client(url, username, password)

# Define the post data (replace with your desired post title and content)
post = WordPressPost()
post.title = 'Your post title'
post.content = 'Your post content'
post.post_status = 'publish'

# Define the external image URL you want to use as the featured image
external_image_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'

# Upload the external image to WordPress using the External URL Featured Image plugin
attachment_id = client.call(
    'externalurl.upload', 
    {
        'url': external_image_url, 
        # 'post_id': post.id
        'post_id': '1'
    }
)

# Set the attachment ID as the post's featured image
post.thumbnail = attachment_id

# Create the post
post_id = client.call(NewPost(post))

# Print the ID of the newly created post
print(post_id)
