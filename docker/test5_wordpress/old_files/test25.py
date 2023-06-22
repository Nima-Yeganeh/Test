import xmlrpc.client
import requests

# Define the WordPress site URL and XML-RPC endpoint
url = 'https://test2.nimayeganeh.ir/xmlrpc.php'

# Define your WordPress username and password
username = 'admin'
password = 'P@ssw0rd'

# Create an XML-RPC client for the WordPress API
client = xmlrpc.client.ServerProxy(url)

# Define the post data (replace with your desired post title and content)
post_data = {
    'title': 'Your post title',
    'description': 'Your post content',
    'post_status': 'publish'
}

# Define the URL of the image you want to use as the thumbnail (replace with your desired image URL)
thumbnail_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'

# Upload the thumbnail image and get its attachment ID
attachment_id = client.wp.uploadFile('', username, password, {
    'name': 'thumbnail.jpg',
    'type': 'image/jpeg',
    'bits': xmlrpc.client.Binary(requests.get(thumbnail_url).content),
    'overwrite': True
})['id']

# Set the thumbnail image as the post's featured image
post_data['post_thumbnail'] = attachment_id

# Create the post using the XML-RPC API
post_id = client.metaWeblog.newPost('', username, password, post_data, True)

# Print the ID of the newly created post
print(post_id)
