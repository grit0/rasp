#!/bin/bash
echo alias in=/'sudo apt-get install /' >> ~/.bashrc
echo alias ud=/'sudo apt-get update/' >> ~/.bashrc
echo alias ug=/'sudo apt-get upgrade -y/' >> ~/.bashrc
source ~/.bashrc
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
