# for '[Node\.js](https://nodejs.org/en/)'.

## VARIABLEs

- DockerHUB => node:12.13.0 (debian stretch)
- WORKDIR   => /tmp


## Startup scripts for fish shell.

    #!/usr/bin/env fish

    docker rm -f (docker ps -aq)

    # [! ATTENTION !]
    docker rmi -f (docker images -q)

    docker build -t docker-nodejs .

    docker run -it -v /<DIRECTORY, YOU WANT TO MOUNT>:/tmp/share docker-nodejs /bin/bash
