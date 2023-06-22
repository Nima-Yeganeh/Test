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
# post.featured_media = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.post_thumbnail = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Nature_.jpg'
post.mt_keywords: 'keyword1, keyword2'
post.mt_excerpt: 'Your post excerpt'
post.categories: ['category1', 'category2']
post.post_status = 'publish'

# Publish the post
client.call(NewPost(post))


