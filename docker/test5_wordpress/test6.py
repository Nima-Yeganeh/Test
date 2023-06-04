from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods import media, posts
from wordpress_xmlrpc.compat import xmlrpc_client

# Set up WordPress XML-RPC client
url = 'http://test2.nimayeganeh.ir/xmlrpc.php'  # Replace with your WordPress site URL
username = 'admin'  # Replace with your WordPress username
password = 'P@ssw0rd'  # Replace with your WordPress password

client = Client(url, username, password)

# Path to the MP4 video file
video_file_path = 'file.mp4'

# Create a WordPress media object for the video file
data = {
    'name': 'Video File',
    'type': 'video/mp4',
}
with open(video_file_path, 'rb') as video_file:
    video_data = xmlrpc_client.Binary(video_file.read())
    media_item = media.WordPressFile(video_data, data)
    response = client.call(media.UploadFile(media_item))

# Get the URL of the uploaded video file
video_url = response['url']

# Create a new WordPress post with the video file
post = WordPressPost()
post.title = 'My Video Post'
post.content = f'<video src="{video_url}" controls></video>'
post.post_status = 'publish'

# Publish the post
client.call(posts.NewPost(post))
