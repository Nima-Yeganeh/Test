import os
from tiktok_scraper import TikTokScraper

def download_tiktok_video(url, output_dir):
    scraper = TikTokScraper()
    video = scraper.get_tiktok_by_url(url)
    
    if video is not None:
        video_url = video["videoUrl"]
        video_id = video["id"]
        output_file = os.path.join(output_dir, f"{video_id}.mp4")
        
        # Download the video
        scraper.download_video(video_url, output_file)
        print(f"Video downloaded successfully: {output_file}")
    else:
        print("Failed to retrieve TikTok video.")

# Example usage
video_url = "https://www.tiktok.com/@username/video/1234567890"
output_directory = "/root/test/zprojects/pr9/"

download_tiktok_video(video_url, output_directory)

