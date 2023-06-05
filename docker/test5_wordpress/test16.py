from wordpress_xmlrpc import Client
from wordpress_xmlrpc.methods import taxonomies
from wordpress_xmlrpc import WordPressTerm

# WordPress site details
site_url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'

# Connect to the WordPress site
client = Client(site_url, username, password)

# Create a new tag
new_tag = WordPressTerm()
new_tag.taxonomy = 'post_tag'  # Specify the taxonomy as 'post_tag' for tags
new_tag.name = 'New Tag'  # Specify the name of the new tag

# Create the tag
created_tag = client.call(taxonomies.NewTerm(new_tag))

# Check if the tag was created successfully
if created_tag:
    print('Tag created successfully with ID:', created_tag.id)
else:
    print('Failed to create the tag.')
