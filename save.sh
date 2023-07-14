docker image save -o /tmp/docker-ubuntu-custom.tar ghcr.io/manegit/docker-ubuntu-custom:latest
bzip2 /tmp/docker-ubuntu-custom.tar
mv -f /tmp/docker-ubuntu-custom.tar.bz2 ~/
