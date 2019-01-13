#!/bin/sh
if [ -z "$1" ]
  then
    echo "No target service, exiting"
    exit 1
fi
docker-compose build $1 \
&& docker-compose up --no-deps -d $1 \
&& yes | docker image prune
