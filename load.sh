gunzip -k ../docker-ubuntu-custom.tar.gz
docker image load -i ../docker-ubuntu-custom.tar
rm ../docker-ubuntu-custom.tar
