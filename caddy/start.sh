#!/bin/sh -e

cat Caddyfile.system Caddyfile > Caddyfile.generated
docker-compose up -d --remove-orphans
