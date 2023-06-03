const { getVideoWatermarkFree } = require('tiktok-scraper-nowatermarks');

const url = 'https://www.tiktok.com/@actorchristiankeyes/video/7230559113724366122';

(async () => {
  try {
    const video = await getVideoWatermarkFree(url);
    console.log(video);
  } catch (error) {
    console.error('Error:', error.message);
  }
})();
