#!/bin/bash


# If directory docker/meshtastic-map  is missing do a submodule init/update.
if [ ! -d docker/meshtastic-map/.git ]; then
  echo "Submodule missing, initializing..."
  git submodule update --init docker/meshtastic-map
fi
cd docker
docker build \
  -t billybag2/meshtastic-map .
cd ..
