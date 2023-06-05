from wordpress_xmlrpc import Client
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc import WordPressTerm

# WordPress site details
site_url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Connect to the WordPress site
client = Client(site_url, username, password)

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

# Publish the post
post_id = client.call(NewPost(post))

print('Post published successfully with ID:', post_id)
