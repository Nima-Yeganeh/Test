from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

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
time.sleep(10)

# Extract the HTML content of the page
page_source = driver.page_source

# Print the page source
print(page_source)

# Quit the Chrome driver
driver.quit()


