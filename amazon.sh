#!/usr/bin/env bash

#requare
sudo apt update
sudo apt install htop
sudo apt install git
sudo apt install mercurial
sudo apt install mc
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
#install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#prepare data
sudo mkdir /var/www
sudo chmod 777 /var/www
sudo chown -R ubuntu:root .
mkdir /var/www/.composer
git clone https://0c098532f0b6f2c034ae25d63e34db8897791484@github.com/magento/magento2ce.git /var/www/magento2ce
git clone https://0c098532f0b6f2c034ae25d63e34db8897791484@github.com/magento/magento2ee.git /var/www/magento2ee
git clone https://0c098532f0b6f2c034ae25d63e34db8897791484@github.com/magento/magento2b2b.git /var/www/magento2b2b
hg clone https://duhon@bitbucket.org/duhon/magento-docker magento
