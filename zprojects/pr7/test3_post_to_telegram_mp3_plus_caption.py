import requests

user_input = input("Enter a string: ")

# Set the URL and chat_id variables
url = 'https://api.telegram.org/bot<your-bot-token>/sendMessage' # Replace <your-bot-token> with your actual bot token
url = 'https://api.telegram.org/bot'+user_input+'/sendMessage' # Replace <your-bot-token> with your actual bot token
chat_id = '@<your-channel-username>' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)
chat_id = '@mynewxyztestbot_botchannel' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)

# Set the audio file path and caption
audio_path = 'audio1.mp3' # Replace with the actual path to your audio file
caption = 'Check out this cool audio!'

# Open the audio file and send the API request
with open(audio_path, 'rb') as audio_file:
    # Set the parameters for the API request
    params = {'chat_id': chat_id, 'caption': caption}
    # Set the files parameter for the API request
    files = {'audio': audio_file}
    # Send the API request using the requests library
    response = requests.post(url, params=params, files=files)

# Check the response status code to make sure the audio was sent successfully
if response.status_code == 200:
    print('Audio sent successfully!')
else:
    print('Error sending audio:', response.status_code)

