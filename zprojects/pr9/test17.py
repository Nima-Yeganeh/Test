from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup
import requests
import time

chrome_driver_path = '/path/to/chromedriver'  # Replace with the actual path to the ChromeDriver executable
service = Service(chrome_driver_path)
options = Options()
options.headless = True  # Run Chrome in headless mode (without GUI)
driver = webdriver.Chrome(service=service, options=options)

def browse_tiktok_and_extract_video_url(username):
    url = f'https://www.tiktok.com/@{username}'
    driver.get(url)
    time.sleep(10)  # Wait for the page to load

    # Extract the HTML content
    page_source = driver.page_source

    # Use BeautifulSoup to parse the HTML
    soup = BeautifulSoup(page_source, 'html.parser')

    # Find the video element
    video_element = soup.find('video')

    # Extract the MP4 video URL
    mp4_url = video_element['src']

    return mp4_url

username = 'kennyscom'  # Replace with the TikTok username you want to browse
video_url = browse_tiktok_and_extract_video_url(username)
print('MP4 Video URL:', video_url)

def download_video_with_chrome(video_url, save_path):
    chrome_options = Options()
    chrome_options.add_argument('--headless')  # Run Chrome in headless mode (without GUI)
    driver = webdriver.Chrome(service=service, options=chrome_options)
    driver.get(video_url)
    time.sleep(10)  # Wait for the video to load

    # Save the video using requests library
    response = requests.get(driver.current_url)
    with open(save_path, 'wb') as file:
        file.write(response.content)

    driver.quit()

video_save_path = 'C:/Users/Nimay/Downloads/video.mp4'
# Replace with the desired path to save the video
download_video_with_chrome(video_url, video_save_path)

