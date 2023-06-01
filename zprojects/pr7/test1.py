import requests

user_input = input("Enter a string: ")

# Set the URL and chat_id variables
url = 'https://api.telegram.org/bot<your-bot-token>/sendMessage' # Replace <your-bot-token> with your actual bot token
url = 'https://api.telegram.org/bot'+user_input+'/sendMessage' # Replace <your-bot-token> with your actual bot token
chat_id = '@<your-channel-username>' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)
chat_id = '@mynewtestbot_bot' # Replace <your-channel-username> with the username of your channel (including the "@" symbol)

# Set the text variable to the message you want to send
text = 'Hello, world!'

# Set the parameters for the API request
params = {'chat_id': chat_id, 'text': text}

# Send the API request using the requests library
response = requests.post(url, params=params)

# Check the response status code to make sure the message was sent successfully
if response.status_code == 200:
    print('Message sent successfully!')
else:
    print('Error sending message:', response.status_code)
