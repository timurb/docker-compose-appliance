FROM erthad/appliance-installer

ENV APPLIANCE_NAME=prometheus

# "local" or "swarm"
ARG DOCKER_MODE
ENV DOCKER_MODE=local

# "caddy" or "traefik"
ARG BALANCER_TYPE
ENV BALANCER_TYPE=caddy

COPY . /installer
