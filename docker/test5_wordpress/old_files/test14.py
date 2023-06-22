from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.methods.taxonomies import GetTerms

# WordPress site details
site_url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Connect to the WordPress site
client = Client(site_url, username, password)

# Create a new WordPress post
post = WordPressPost()
post.title = 'Example Post'
post.content = 'This is the content of the example post.'

# Retrieve the tags from WordPress
tags = client.call(GetTerms('post_tag'))

# Add tags to the post
tag_names = ['tag1', 'tag2', 'tag3']
tag_slugs = [tag.slug for tag in tags if tag.name in tag_names]
post.terms_names = {'post_tag': tag_slugs}
post.post_status = 'publish'

# Publish the post
post_id = client.call(NewPost(post))

print('Post published successfully with ID:', post_id)

