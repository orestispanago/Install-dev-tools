#!/bin/bash
sudo apt install curl

# pip + pipenv
apt install python3-pip -y
pip3 install pipenv

# snaps
snap install gitkraken --classic
snap install spotify postman viber-unofficial telegram-desktop skype
snap install pycharm-community --classic
echo snap >> ~/.hidden

# debs
wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.21-1ubuntu20.04_amd64.deb
wget https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb
wget https://atom-installer.github.com/v1.53.0/atom-amd64.deb
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb

sudo dpkg -i *.deb
sudo apt-get install -f -y
rm *.deb

# incremental history search
bash inputrc.sh

bash docker_and_compose.sh

bash java_netbeans.sh
bash nodejs.sh

bash miniconda.sh

bash paraview.sh
bash solstice.sh

bash brave_browser.sh

bash jekyll.sh
