const { TikTokScraper } = require('tiktok-scraper-nowatermarks');

const url = 'https://www.tiktok.com/@actorchristiankeyes/video/7230559113724366122';

(async () => {
  try {
    const scraper = new TikTokScraper();
    const video = await scraper.getVideoMeta(url);
    console.log(video);
  } catch (error) {
    console.error('Error:', error.message);
  }
})();

