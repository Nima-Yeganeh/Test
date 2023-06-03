import os
import requests
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup

# Set up the Chrome driver
chrome_driver_path = "/path/to/chromedriver"  # Replace with the actual path to the ChromeDriver executable
service = Service(chrome_driver_path)
options = Options()
options.add_argument("--headless")  # Run Chrome in headless mode (without GUI)
driver = webdriver.Chrome(service=service, options=options)

# Define the TikTok username
username = "kennyscom"

# Construct the TikTok user URL
url = f"https://www.tiktok.com/@{username}"

# Browse the TikTok user's profile
driver.get(url)

# Wait for the page to load (adjust the sleep time as needed)
import time
time.sleep(20)

# Extract the HTML content of the page
page_source = driver.page_source

# Parse the HTML with BeautifulSoup
soup = BeautifulSoup(page_source, "html.parser")

# Find the video element
video_element = soup.find("video")
if video_element:
    # Get the video URL
    video_url = video_element["src"]
    print(video_url)

    # Download the video
    video_filename = f"C:/Users/Nimay/Downloads/{username}_video.mp4"
    response = requests.get(video_url, stream=True)
    with open(video_filename, "wb") as video_file:
        for chunk in response.iter_content(chunk_size=1024):
            video_file.write(chunk)

        # Print the download location
        print(f"Video downloaded: {os.path.abspath(video_filename)}")
else:
    print("Video element not found.")

# Quit the Chrome driver
driver.quit()
