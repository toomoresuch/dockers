# dockers

## Install 'docker-compose' on 'Debian'.

    #!/usr/bin/env bash

    export URL="https://github.com/docker/compose/releases/download"

    sudo curl -L "${URL}/1.24.1/docker-compose-$(uname -s)-$(uname -m)" \
        -o /usr/local/bin/docker-compose

    sudo chmod +x /usr/local/bin/docker-compose
