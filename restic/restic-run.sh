#!/bin/sh -e
export HOSTNAME=$(hostname)
cd $(dirname $0)
/usr/local/bin/docker-compose run --rm restic '
        restic backup --exclude-caches /data &&
        restic-exporter &&
        restic check &&
        restic forget --prune --keep-daily 7 --keep-weekly 4 --keep-monthly 12 --keep-yearly 3 &&
        cat stats.txt'
