docker run -it -v ~:/share -v /var/run/docker.sock:/var/run/docker.sock -e TZ=Europe/Berlin --name ubuntu-custom ghcr.io/manegit/docker-ubuntu-custom /bin/zsh
