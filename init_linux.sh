#!/bin/bash
echo alias in=/'sudo apt-get install /' >> ~/.bashrc
echo alias ud=/'sudo apt-get update/' >> ~/.bashrc
echo alias ug=/'sudo apt-get upgrade -y/' >> ~/.bashrc
echo alias sH=/'sudo shutdow -h/' >> ~/.bashrc
echo alias lcr=/'tail -f /var/log/syslog | grep CRON/' >> ~/.bashrc
source ~/.bashrc 
sudo apt-get update && sudo apt-get -y upgrade  
sudo apt-get install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

