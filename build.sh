#!/bin/bash
function join {
  local IFS=':'
  echo "$*"
}

function compose_files {
  echo $(join $(ls -1 docker-compose.*.yml))
}

export COMPOSE_FILE=$(compose_files)
set -e
docker-compose build --pull
docker-compose push
