#!/bin/sh

docker build --tag caddy-ngrok-authtoken-reproducer --target caddy --pull --no-cache .
docker run --rm --env-file .env caddy-ngrok-authtoken-reproducer
