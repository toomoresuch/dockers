# a Dockerfile for '[Middleman](https://middlemanapp.com/)'.

## VARIABLE

- DockerHUB => ruby:2.6.5 (debian buster)
- PORT => 80
- VOLUME => /tmp/share
- WORKDIR => /tmp


## The listed scripts are for fish shell.

    docker rm -f (docker ps -aq)

    # [! ATTENTION !]
    docker rmi -f (docker images -q)

    docker build -t docker-middleman .

    docker run -it \
        -p <PORT, YOU WANT TO MOUNT>:80 \
        -v /<DIRECTORY, YOU WANT TO MOUNT>:/tmp/share \
        docker-middleman \
        /bin/bash middleman.sh
