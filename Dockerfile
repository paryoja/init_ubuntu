FROM ubuntu:18.04
MAINTAINER yj0604.park@gmail.com

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get update
RUN apt-get install -y git vim python3-pip npm
RUN npm -g install js-beautify
RUN python3 -m pip install autopep8

ADD _vimrc /root/.vimrc
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim

RUN vim +PluginInstall +qall
