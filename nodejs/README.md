# for '[Node\.js](https://nodejs.org/en/)'.

## VARIABLEs

- DockerHUB => node:12.14.0 (debian buster)
- PORT      => 4567:80
- WORKDIR   => /tmp
- VOLUME    => /tmp/share

## Startup scripts for fish shell.

    #!/usr/bin/env fish

    docker rm -f (docker ps -aq)

    # [! ATTENTION !]
    docker rmi -f (docker images -q)

    docker-compose build

    export VOLUME=<DIRECTORY, YOU WANT TO MOUNT>

    # For local server only.
    docker-compose up

    # For local server or build.
    docker-compose run --service-ports nodejs /bin/bash

    # After loggging into 'docker-nodejs' container.
    root@[0-9a-z]{12}:/tmp/share# gatsby develop -p 80 -H 0.0.0.0
