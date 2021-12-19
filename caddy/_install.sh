#!/bin/sh -e

usage() {
  echo "Usage: $(basename $0) INSTALL_PATH" >&2
  exit 1
}

[ -z "$1" ] && usage

docker run --rm -it --pull always --mount type=bind,source=$1,target=/install erthad/appliance-caddy
