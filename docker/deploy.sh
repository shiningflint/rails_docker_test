#!/bin/sh
docker-compose build $1 \
&& docker-compose up --no-deps -d $1 \
&& yes | docker image prune
