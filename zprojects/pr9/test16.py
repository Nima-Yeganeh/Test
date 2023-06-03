from selenium import webdriver
from bs4 import BeautifulSoup
import time
import requests

# Set up Selenium webdriver
driver = webdriver.Chrome('/path/to/chromedriver')  # Replace with your chromedriver path
driver.get('https://www.tiktok.com/')

# Wait for the page to load
# You may need to adjust the sleep duration depending on your internet speed and the page load time
time.sleep(10)

# Get the page source
html = driver.page_source

# Close the browser
driver.quit()

# Create a BeautifulSoup object to parse the HTML
soup = BeautifulSoup(html, 'html.parser')

# Find all video elements
videos = soup.find_all('video')

# Extract the MP4 video URLs
video_urls = [video['src'] for video in videos]

# Print the video URLs
for url in video_urls:
    print(url)

# Print the video URLs
for url in video_urls:
    print(url)
    
    # Download the video
    response = requests.get(url)
    
    # Check if the request was successful
    if response.status_code == 200:
        # Extract the filename from the URL
        filename = url.split('/')[-1]
        
        # Save the video to a file
        with open(filename, 'wb') as f:
            f.write(response.content)
            
        print(f"Video downloaded: {filename}")
    else:
        print(f"Failed to download video: {url}")

