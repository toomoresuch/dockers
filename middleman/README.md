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

    export VOLUME=<DIRECTORY, YOU WANT TO MOUNT>

    # For local server only.
    docker-compose up

    # For local server or build.
    docker-compose run --service-ports middleman /bin/bash

    # After loggging into 'docker-middleman' container.
    root@[0-9a-z]{12}:/tmp/share# bundle exec middleman (-p 80 | build)

## How to handle errors when deploying to Github Pages.

- 'middleman deploy' cannot be used in docker container.  
    Therefore, the solution is as follows.

    - [サブディレクトリ－をgh\-pagesへ向ける運用 \- Hail2u](https://hail2u.net/blog/software/pointing-sub-directory-to-gh-pages.html)
