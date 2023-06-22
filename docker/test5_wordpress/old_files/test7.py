from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods import media, posts

# Set up WordPress XML-RPC client
url = 'https://test2.nimayeganeh.ir/xmlrpc.php'  # Replace with your WordPress site URL
username = 'admin'  # Replace with your WordPress username
password = 'P@ssw0rd'  # Replace with your WordPress password

client = Client(url, username, password)

# Path to the MP4 video file
video_file_path = 'C:/Users/Nimay/nima_git/Test/docker/test5_wordpress/file.mp4'

# Upload the video file to WordPress media library
with open(video_file_path, 'rb') as video_file:
    response = client.call(media.UploadFile(video_file.name, video_file.read()))

# Get the URL of the uploaded video file
video_url = response['url']

# Create a new WordPress post with the video file
post = WordPressPost()
post.title = 'My Video Post'
post.content = f'<video src="{video_url}" controls></video>'
post.post_status = 'publish'

# Publish the post
client.call(posts.NewPost(post))
