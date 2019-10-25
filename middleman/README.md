# for '[Middleman](https://middlemanapp.com/)'.

## VARIABLEs

- DockerHUB => ruby:2.6.5 (debian buster)
- PORT      => 4567:80
- WORKDIR   => /tmp
- VOLUME    => /tmp/share


## Install 'docker-compose' on 'Debian'.

    #!/usr/bin/env bash

    export URL="https://github.com/docker/compose/releases/download"

    sudo curl -L "${URL}/1.24.1/docker-compose-$(uname -s)-$(uname -m)" \
        -o /usr/local/bin/docker-compose

    sudo chmod +x /usr/local/bin/docker-compose


## Startup scripts for fish shell.

    #!/usr/bin/env fish

    docker rm -f (docker ps -aq)

    # [! ATTENTION !]
    docker rmi -f (docker images -q)

    docker-compose build

    export VOLUME=<DIRECTORY, YOU WANT TO MOUNT> && docker-compose up
