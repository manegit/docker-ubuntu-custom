bzip2 -d -k ../docker-ubuntu-custom.tar.bz2
docker image load -i ../docker-ubuntu-custom.tar
rm ../docker-ubuntu-custom.tar
