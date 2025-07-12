#!/bin/bash
export COMPOSE_BAKE=true # more efficient build process
docker compose -f example-compose.yml up -d --build --force-recreate --remove-orphans
