docker image save -o /tmp/docker-ubuntu-custom.tar mane1docker/ubuntu-custom:latest
gzip /tmp/docker-ubuntu-custom.tar
mv -f /tmp/docker-ubuntu-custom.tar.gz ~/
