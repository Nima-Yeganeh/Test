const TikTokScraper = require('tiktok-scraper');

const url = 'https://www.tiktok.com/@actorchristiankeyes/video/7230559113724366122';

(async () => {
  try {
    const videoMeta = await TikTokScraper.getVideoMeta(url);
    console.log(videoMeta);
  } catch (error) {
    console.error('Error:', error);
  }
})();
