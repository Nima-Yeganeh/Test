import requests

def get_url_content(url):
    try:
        response = requests.get(url)
        response.raise_for_status()  # Check for any HTTP errors
        
        content = response.text
        return content
    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")
        return None

# Example usage
url = "https://www.tiktok.com"
content = get_url_content(url)

if content:
    print(content)

