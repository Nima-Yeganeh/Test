const TikTokScraper = require('tiktok-scraper');

const url = 'https://www.tiktok.com/@test/video/71581153224555456456';

(async () => {
  try {
    const videoMeta = await TikTokScraper.getVideoMeta(url);
    console.log(videoMeta);
  } catch (error) {
    console.error('Error:', error);
  }
})();
