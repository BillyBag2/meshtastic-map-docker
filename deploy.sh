#!/bin/bash

# If docker/deploy.env is missing create it
if [ ! -f compose/sql.env ]; then
  echo "Creating compose/sql.env"
  echo "Adding random SQL key."
  echo MARIADB_ROOT_PASSWORD=$(openssl rand -base64 32 | tr -dc 'a-zA-Z0-9') > compose/sql.env
fi
source compose/sql.env
export MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD
docker compose -f compose/deploy.yml up
