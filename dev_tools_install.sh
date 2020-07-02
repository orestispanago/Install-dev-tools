#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
rm get-docker.sh


curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs


flatpak install flathub com.axosoft.GitKraken -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.anydesk.Anydesk -y
flatpak install flathub io.atom.Atom -y
flatpak install flathub com.microsoft.Teams -y
flatpak install flathub org.gnome.DejaDup -y


wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.20-1ubuntu18.04_amd64.deb
sudo dpkg -i *.deb
sudo apt-get install -f -y
rm mysql-workbench-community_8.0.20-1ubuntu18.04_amd64.deb


# Install jdk if not present on system
# sudo apt-get install -y openjdk-8-jdk

# Run netbeans installer only if it does not work from home folder restore
# wget http://download.netbeans.org/netbeans/8.2/rc/bundles/netbeans-8.2-javaee-linux.sh
# sudo sh netbeans-8.2-javaee-linux.sh
