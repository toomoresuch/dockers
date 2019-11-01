# for '[PHP]()'.

## VARIABLEs

- DockerHUB =>
- PORT      => 4567:80
- WORKDIR   => /tmp
- VOLUME    => /tmp/share


## Startup scripts for fish shell.

    #!/usr/bin/env fish

    docker rm -f (docker ps -aq)

    # [! ATTENTION !]
    docker rmi -f (docker images -q)

    docker-compose build

    export VOLUME=<DIRECTORY, YOU WANT TO MOUNT> && docker-compose up


## MEMO

- [DockerコンテナのCentOS7上でsystemctlを使う \| ぷちめも](https://memo.koumei2.com/docker-centos7-systemctl/)
