# base image
FROM ubuntu:latest

ENV USER=ubuntu
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt update && apt install -y python3-pip mc ncdu aria2 htop fd-find nano busybox \
git git-lfs lynx jq bc dos2unix gawk sed p7zip gzip markdown neofetch \
tmux curl cmatrix w3m bash figlet nmap sudo emacs gnupg mat2 secure-delete \
less at newsboat buku ddgr caca-utils zsh && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# Install Python modules
COPY requirements.txt /usr/src/py3/
RUN pip3 install --no-cache-dir -r /usr/src/py3/requirements.txt

RUN useradd -m -s /bin/bash -G sudo $USER && echo "$USER:$USER" | chpasswd

COPY homedir.tar.gz /home/$USER/

USER $USER
WORKDIR /home/$USER

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
cd .oh-my-zsh/custom/plugins && \
git clone https://github.com/zsh-users/zsh-autosuggestions

RUN gunzip homedir.tar.gz && tar -xvf homedir.tar . && \
rm homedir.tar && \
mkdir bin

USER root

RUN chown -R $USER:users .
#chmod u+x bin/* && \

USER $USER

# run the applicationn
CMD ["/bin/bash"]
