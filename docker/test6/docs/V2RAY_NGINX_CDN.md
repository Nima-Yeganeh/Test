# Setup V2Ray Using NGINX and a CDN Service

Follow these steps:

1. In your CDN, create an `A` record pointing to your server IP with the proxy option turned off.
1. Install Docker and Docker-compose on your server.
1. Copy the `v2ray-nginx-cdn` directory into the server.
1. Run ```cat /proc/sys/kernel/random/uuid``` to generate a UUID.
1. Replace `<UPSTREAM-UUID>` in `v2ray/config/config.json` with the generated UUID.
1. Replace `YOUR_DOMAIN` in `docker-compose.yml` with your domain/subdoamin.
1. Replace `YOUR_EMAIL` in `docker-compose.yml` with your email (For Let’s Encrypt).
1. Run `docker-compose up -d`.
1. Visit your domain/subdomain in your web browser.
1. In your CDN, turn the proxy option on for the record.
1. Run `./vmess.py` to generate client configuration (link).
