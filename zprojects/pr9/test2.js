import getVideoWatermarkFree, { Video } from tiktok-scraper-nowatermarks;

const url = 'https://www.tiktok.com/@test/video/71581153224555456456';

(async () => {
    const video : Video = await getVideoWatermarkFree(url);
    console.log(video);
})();
