FROM caddy:2.7.4-builder-alpine as builder

RUN xcaddy build --with github.com/mohammed90/caddy-ngrok-listener@latest

FROM caddy:2.7.4-alpine as caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
