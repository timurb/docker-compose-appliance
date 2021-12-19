#!/bin/sh

usage() {
  echo "Usage: $(basename $0) APPLIANCE_NAME" >&2
  exit 1
}

[ -z "$1" ] && usage

mkdir -p $1

cp -i appliance-installer/_* $1
ln -is ../appliance-installer/.dockerignore $1
grep -r CHANGEME $1
