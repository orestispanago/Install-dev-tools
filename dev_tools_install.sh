#!/bin/bash


wget https://atom-installer.github.com/v1.48.0/atom-amd64.deb
wget https://download.anydesk.com/linux/anydesk_5.5.6-1_amd64.deb
wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.20-1ubuntu20.04_amd64.deb
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb

sudo dpkg -i *.deb
sudo apt-get install -f -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER


sudo apt-get install -y openjdk-8-jdk
#wget http://download.netbeans.org/netbeans/8.2/rc/bundles/netbeans-8.2-javaee-linux.sh
#sudo sh netbeans-8.2-javaee-linux.sh


sudo snap install gitkraken --classic
sudo snap install spotify postman
