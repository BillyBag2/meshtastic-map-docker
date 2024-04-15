#!/bin/bash

# If sql.env is missing create it
if [ ! -f sql.env ]; then
  echo "Creating sql.env"
  echo "Adding random SQL key."
  echo MARIADB_ROOT_PASSWORD=$(openssl rand -base64 32 | tr -dc 'a-zA-Z0-9') > sql.env
fi
source sql.env
export MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD
docker compose -f development.yml up