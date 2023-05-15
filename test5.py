# pip install requests

import requests
import json

url = 'https://jsonplaceholder.typicode.com/todos/1'
response = requests.get(url)
data = json.loads(response.text)

print(f"Title: {data['title']}")
print(f"Completed: {data['completed']}")
