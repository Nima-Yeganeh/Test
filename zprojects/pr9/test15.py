from selenium import webdriver
from bs4 import BeautifulSoup

def get_url_content(url):
    try:
        # Configure the webdriver to use a real browser
        options = webdriver.ChromeOptions()
        options.add_argument("--headless")  # Run the browser in headless mode (without GUI)
        driver = webdriver.Chrome(options=options)
        
        # Open the URL in the browser
        driver.get(url)
        
        # Get the HTML content
        content = driver.page_source
        
        return content
    except Exception as e:
        print(f"An error occurred: {e}")
        return None
    finally:
        # Close the browser
        driver.quit()

def extract_video_urls(html_content):
    try:
        soup = BeautifulSoup(html_content, 'html.parser')
        video_urls = []

        # Find video elements
        video_elements = soup.find_all('video')

        # Extract video URLs from video elements
        for video in video_elements:
            url = video['src']
            video_urls.append(url)

        return video_urls
    except Exception as e:
        print(f"An error occurred while extracting video URLs: {e}")
        return []

# Example usage
url = "https://www.tiktok.com/foryou"
content = get_url_content(url)

if content:
    video_urls = extract_video_urls(content)
    for url in video_urls:
        print(url)

