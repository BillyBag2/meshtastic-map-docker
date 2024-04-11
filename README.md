# meshtastic-map-docker

# Original docker project by mddeff

http: // github.com / [mddeff](https://github.com/mddeff) / [meshtastic-map](https://github.com/mddeff/meshtastic-map)

# Submodule containing meshtastic-map by liamcottle

http: // github.com / [liamcottle](https://github.com/liamcottle) / [meshtastic-map](https://github.com/liamcottle/meshtastic-map)

# What is this repository?

This project create containers for liamcottle's meshtastic-map project.
It rejigs mddeff's docker project to use submodules.
Having meshtastic-map in submodules will both pin the version used to a fixed commit, and also provide a mechanism to pull the latest version or work on branches or forks. By default you get a version pinned to a specified commit
that is designed to work with this project.

# TODO

At time of writing the submodule containing the map server was not initialized
or fetched.

# Prerequisites

* docker engine/cli tools.
* `bash` based shell on host. Eg Ubuntu
* git

# Build image for map server.

```
./build_image.sh
```

# Deploy two containers

```
./deploy.sh
```

This deploys two containers using `docker compose`. One is the map server and
mqtt fetcher. The other takes care of the database.

# Wish list

Launch components separately so they can be developed leaving other components running.
