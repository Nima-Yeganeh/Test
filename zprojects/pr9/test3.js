const { getVideoWatermarkFree } = require('tiktok-scraper-nowatermarks');

const url = 'https://www.tiktok.com/@test/video/71581153224555456456';

(async () => {
  try {
    const video = await getVideoWatermarkFree(url);
    console.log(video);
  } catch (error) {
    console.error('Error:', error);
  }
})();
