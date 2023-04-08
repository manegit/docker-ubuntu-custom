docker image save -o /tmp/docker-ubuntu-custom.tar ghcr.io/manegit/docker-ubuntu-custom:latest
gzip /tmp/docker-ubuntu-custom.tar
mv -f /tmp/docker-ubuntu-custom.tar.gz ~/
