const TikTokScraper = require('tiktok-scraper-nowatermarks');

const url = 'https://www.tiktok.com/@username/video/1234567890';

TikTokScraper.getVideoMeta(url)
  .then((videoMeta) => {
    const videoUrl = videoMeta.collector[0].videoUrlNoWaterMark;
    console.log('Video without watermark:', videoUrl);
  })
  .catch((error) => {
    console.error('Error:', error);
  });
