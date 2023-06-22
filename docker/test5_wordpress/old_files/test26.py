import xmlrpc.client

url = 'https://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Create an XML-RPC client for the WordPress API
client = xmlrpc.client.ServerProxy(url)

# Define the post data (replace with your desired post title and content)
post_data = {
    'title': 'Your post title',
    'description': 'Your post content',
    'post_status': 'publish',
    'post_thumbnail': 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
}

# Create the post using the XML-RPC API
post_id = client.wp.newPost('', username, password, post_data)

# Print the ID of the newly created post
print(post_id)
