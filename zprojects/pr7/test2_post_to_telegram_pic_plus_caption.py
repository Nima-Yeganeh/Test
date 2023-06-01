import requests

user_input = input("Enter a string: ")

# Set the URL and chat_id variables
url = 'https://api.telegram.org/bot<your-bot-token>/sendMessage' # Replace <your-bot-token> with your actual bot token
url = 'https://api.telegram.org/bot'+user_input+'/sendMessage' # Replace <your-bot-token> with your actual bot token
chat_id = '@<your-channel-username>' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)
chat_id = '@mynewxyztestbot_botchannel' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)

photo_path = 'file1.jpg' # Replace with the actual path to your photo file

# Set the caption for the photo
caption = 'Check out this cool photo!'

# Open the photo file and send the API request
with open(photo_path, 'rb') as photo_file:
    # Set the parameters for the API request
    params = {'chat_id': chat_id, 'caption': caption}
    # Set the files parameter for the API request
    files = {'photo': photo_file}
    # Send the API request using the requests library
    response = requests.post(url, params=params, files=files)

# Check the response status code to make sure the photo was sent successfully
if response.status_code == 200:
    print('Photo sent successfully!')
else:
    print('Error sending photo:', response.status_code)
