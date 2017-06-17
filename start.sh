#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"

docker stop $(docker ps -a -q)
docker-compose down
project=''

gnome-terminal --window -e "bash -c 'docker-compose -f $DIR/docker-compose.yml up $project'" \
 --tab -e "bash -c 'sleep 5; docker exec -it opencv_pyton_1 /bin/bash'"

