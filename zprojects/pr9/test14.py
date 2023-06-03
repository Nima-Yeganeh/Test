from selenium import webdriver

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

# Example usage
url = "https://www.tiktok.com/foryou"
content = get_url_content(url)

if content:
    print(content)
