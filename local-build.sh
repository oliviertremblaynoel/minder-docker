#!/bin/bash
export COMPOSE_BAKE=true # more efficient build process
docker compose -f example-compose.yml build --no-cache
docker compose -f example-compose.yml up -d --force-recreate --remove-orphans
