# TikTok Scraper without watermarks Node.js

Saves Tiktok videos without TikTok watermark. Use only for your own videos.

## Installation

`$ npm install --save tiktok-scraper-nowatermarks`

## Example usage

```ts
import getVideoWatermarkFree, { Video } from tiktok-scraper-nowatermarks;

const url = 'https://www.tiktok.com/@test/video/71581153224555456456';

(async () => {
    const video : Video = await getVideoWatermarkFree(url);
    console.log(video);
})();
```

Return information about a video of type `Video`.

Output for example above:

```js
{
  url: 'https://v16m-us.tiktokcdn.com/15bdsadsadsad2d757b/635845a1/video/tos/useast2a/tos-useast2a-ve-0068c003/oABWI15SxIkLCggNvAqfQd3hUCzQb6AZtotjAZ/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=4146&bt=2073&cs=0&ds=6&ft=td_L48hPoTVD12NZYp88-Ux9vdbOgF_ODS2&mime_type=video_mp4&qs=0&rc=PDY4Z2k7Z2k2Z2g0aWU8Z0BpajQ8cGc6ZnBlZzMzNzczM0A2LjUwYF4tXzYxYGNhYWJfYSNwZjVhcjRva19gLS1kMTZzcw%3D%3D&l=20221025142212010245002146192AA3D8&btag=80000&cc=24',
  vid: '71581153224555456456',
  description: '#fyp 🤓☕️👍'
}
```

## License

[MIT](LICENSE)
