#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common byobu
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./_vimrc ~/.vimrc

vim +PluginInstall +qall

echo export TERM=screen >> ~/.bashrc
echo alias python='python3' >> ~/.bashrc

sudo usermod -aG docker $USER
sudo systemctl restart docker 

sudo mkdir /data
sudo mkdir /image

sudo timedatectl set-timezone 'Asia/Seoul'

sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install autopep8
#sudo cp fstab /etc/fstab
#sudo cp docker.service /lib/systemd/system/docker.service

#sudo docker network create -d bridge mybridge

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
