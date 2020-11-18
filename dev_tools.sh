#!/bin/bash
sudo apt install curl

# pip + pipenv
apt install python3-pip -y
pip3 install pipenv

# docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
rm get-docker.sh

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# flatpaks
# flatpak install flathub com.axosoft.GitKraken -y
# flatpak install flathub com.spotify.Client -y
# flatpak install flathub com.getpostman.Postman -y
# flatpak install flathub com.anydesk.Anydesk -y
# flatpak install flathub io.atom.Atom -y
# flatpak install flathub com.microsoft.Teams -y
# flatpak install flathub org.gnome.DejaDup -y

# snaps
snap install gitkraken --classic
snap install spotify postman
snap install pycharm-community --classic
echo snap >> ~/.hidden

wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.21-1ubuntu20.04_amd64.deb
#wget https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb
wget https://atom-installer.github.com/v1.50.0/atom-amd64.deb
#wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb

sudo dpkg -i *.deb
sudo apt-get install -f -y
rm *.deb

# Install jdk if not present on system
 sudo apt-get install -y openjdk-8-jdk

# Run netbeans installer only if it does not work from home folder restore
# wget http://download.netbeans.org/netbeans/8.2/rc/bundles/netbeans-8.2-javaee-linux.sh
# sudo sh netbeans-8.2-javaee-linux.sh
