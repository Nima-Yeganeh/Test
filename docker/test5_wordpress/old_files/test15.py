import xmlrpc.client

# WordPress site details
site_url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Connect to the WordPress XML-RPC server
server = xmlrpc.client.ServerProxy(site_url)

# Create a new post object
post = {
    'post_type': 'post',
    'post_title': 'Example Post',
    'post_content': 'This is the content of the example post.',
    'post_status': 'publish',
    'terms': {
        'post_tag': ['tag1', 'tag2', 'tag3']
    }
}

# Authenticate and publish the post
post_id = server.wp.newPost(0, username, password, post)

print('Post published successfully with ID:', post_id)
