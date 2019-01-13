#!/bin/sh
[[ -z "$1" ]] && { echo "No target service, exiting" ; exit 1; }
docker-compose build $1 \
&& docker-compose up --no-deps -d $1 \
&& yes | docker image prune
