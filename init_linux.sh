#!/bin/bash
echo alias in='sudo apt-get install ' >> ~/.bashrc
echo alias ud='sudo apt-get update' >> ~/.bashrc
echo alias ug='sudo apt-get upgrade' >> ~/.bashrc
source ~/.bashrc
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install vim
