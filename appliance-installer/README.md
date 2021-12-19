# Installer image for appliances

## Configuration
```
FROM erthad/appliance-installer

ENV APPLIANCE_NAME=traefik
COPY . /installer
```

## Usage
``
docker run --rm -it --mount type=bind,source=/app,target=/install traefik-installer
```
