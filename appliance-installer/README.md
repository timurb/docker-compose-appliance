# Installer image for appliances

## Configuration
```
FROM appliance-installer
ENV APPLIANCE_NAME=traefik
```

## Usage
``
docker run --rm -it --mount type=bind,source=/app,target=/install traefik-installer
```
