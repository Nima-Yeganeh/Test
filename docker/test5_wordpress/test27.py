## not working

from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.posts import NewPost

# Set up the WordPress client
wp_url = 'https://test2.nimayeganeh.ir/xmlrpc.php'
wp_username = 'admin'
wp_password = 'P@ssw0rd'
client = Client(wp_url, wp_username, wp_password)

# Create a new post
post = WordPressPost()
post.title = 'Your post title'
post.content = 'Your post content'
# post.featured_image_from_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.external_featured_image = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.featured_image = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.post_thumbnail = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.thumbnail_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.external_image = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.external_image_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.external_featured_image_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.external_url = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.dcmsExternalImage = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.post_status = 'publish'

# Publish the post
client.call(NewPost(post))
