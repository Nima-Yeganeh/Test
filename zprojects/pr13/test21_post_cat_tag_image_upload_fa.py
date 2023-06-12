import os
import wordpress_xmlrpc
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods.media import UploadFile
from wordpress_xmlrpc.methods.posts import NewPost
from wordpress_xmlrpc.compat import xmlrpc_client

url = 'http://test2.nimayeganeh.ir/xmlrpc.php'
username = 'admin'
password = 'P@ssw0rd'
ztitlefile = "ztitlefile.txt"
zcontentfile = "zcontentfile.txt"
zcatfile = "zcatfile.txt"
zjpgfilename = "zjpgfilename.txt"
zfile1 = 'file1.htm'
zfile2 = 'file2.htm'
zfile3 = 'file3.htm'
zfile4 = 'file4.htm'
zmp3new128fileurl = 'zmp3new128fileurl.txt'
mp3url = ''
imgurl = ''

client = Client(url, username, password)

post = WordPressPost()

# Get MP3 File URL Link
# Read the first line of the file into a variable
with open(zmp3new128fileurl, 'r') as file:
    first_line = file.readline().strip()
mp3url = first_line

# Read the first line of the file into a variable
with open(zjpgfilename, 'r') as file:
    first_line = file.readline().strip()
image_path = first_line

with open(image_path, 'rb') as img:
    data = img.read()
filename = os.path.basename(image_path)
file = {'name': filename, 'type': 'image/jpeg', 'bits': xmlrpc_client.Binary(data)}
response = client.call(UploadFile(file))

post.post_type = 'post'

# Read the file contents into a variable
with open(ztitlefile, 'r') as file:
    file_contents = file.read()
post.title = file_contents

post.thumbnail = response['id']

# Get Image File URL Link
imgurl = response['url']

# Read contents of zcontentfile
with open(zcontentfile, 'r') as file:
    file_contents = file.read()
with open(zfile4, 'a') as file4:
    file4.write(file_contents)

# Read contents of file1
with open(zfile1, 'r') as file1:
    content1 = file1.read()
with open(zfile4, 'a') as file4:
    file4.write(content1)

# Append contents of the variable to file4
with open(zfile4, 'a') as file4:
    file4.write(mp3url)

# Read contents of file2
with open(zfile2, 'r') as file2:
    content2 = file2.read()
with open(zfile4, 'a') as file4:
    file4.write(content2)

# Append contents of the variable to file4
with open(zfile4, 'a') as file4:
    file4.write(imgurl)

# Read contents of file3
with open(zfile3, 'r') as file3:
    content3 = file3.read()
with open(zfile4, 'a') as file4:
    file4.write(content3)

# Read the file contents into a variable
with open(zfile4, 'r') as file:
    file_contents = file.read()
post.content = file_contents

# Read the file contents into a variable
with open(zcatfile, 'r') as file:
    file_contents = file.read()
zcat = file_contents

string = post.title
# Split the string into words
words = string.split()
# Create a new list with single quotes for each word
ztag = [f"'{word}'" for word in words]

post.terms_names = {'category': [zcat], 'post_tag': ztag}

post.post_status = 'publish'

post_id = client.call(NewPost(post))
# post_url = client.call('post.getPermalink', post_id)

print('Post created successfully!')
print('New post created with ID:', post_id)
print('Image URL: ', imgurl)
print('MP3 URL: ', mp3url)
# print('Post URL:', post_url)
