# Traefik deployment 

[Traefik](https://traefik.io) is a web proxy to expose docker containers to out internet.

This is docker-compose file to run Traefik for proxying traffic to other applications deployed using docker-compose or to the same Docker Swarm cluster.

## Features
- Both Docker Compose and Docker Swarm deployments are supported
- Main application port is 80
- Dashboard is published on port 8090
- Standalone `whoami` stack for debugging. Published on `:8090/whoami`

## TODOs
- SSL
- Dashboard authentication
