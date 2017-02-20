#!/bin/csh
sudo apt-get update
sudo apt-get install git
#sudo adduser git

ssh-keygen -t rsa -C "sujielei@hotmail.com"
cat ~/.ssh/id_rsa.pub 
git clone git@github.com:sujielei/ubuntu_config.git

git config --global user.email "sujielei@hotmail.com"
git config --global user.name "sujielei"

