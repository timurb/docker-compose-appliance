# Traefik deployment 

[Traefik](https://traefik.io) is a web proxy to expose docker containers to out internet.

This is docker-compose file to run Traefik for proxying traffic to other applications deployed using docker-compose or to the same Docker Swarm cluster.

## Features
- Both Docker Compose and Docker Swarm deployments are supported
- Main application port is 80
- Dashboard is published on port 8090
- Standalone `whoami` stack for debugging. Published on `:8090/whoami`

## Usage:

Docker Compose deployment:
```
docker-compose up -d
docker-compose --file docker-compose.whoami.yml up -d  # Debug container
```

Docker Swarm deployment:
```
docker stack deploy --compose-file docker-compose.yml,docker-compose.swarm.yml traefik
docker stack deploy --compose-file docker-compose.whoami.yml,docker-compose.swarm-app.yml whoami
```

Check URLs `:8090/dashboard/` (trailing slash required) and `:8090/whoami` to work.

## TODOs
- SSL
- Dashboard authentication
