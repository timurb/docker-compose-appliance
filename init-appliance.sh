#!/bin/sh

usage() {
  echo "Usage: $(basename $0) APPLIANCE_NAME" >&2
  exit 1
}

[ -z "$1" ] && usage

mkdir -p $1

cp -i appliance-installer/_* $1
cp -i appliance-installer/Dockerfile.init $1/Dockerfile
ln -is ../appliance-installer/.dockerignore $1

echo
echo "!!! Edit and update the files below !!!"
grep -r CHANGEME $1
