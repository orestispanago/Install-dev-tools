#!/bin/bash

INSTALL_DIR=$HOME/.miniconda3

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# -b: Silent install -p: path
bash Miniconda3-latest-Linux-x86_64.sh -b -p $INSTALL_DIR

eval "$(${INSTALL_DIR}/bin/conda shell.bash hook)"
conda init
# source ~/.bashrc

conda install spyder -y
conda install jupyter -y

conda config --set auto_activate_base false

apt install python3-pip -y

pip install pandas
pip install matplotlib
pip install seaborn

rm Miniconda3-latest-Linux-x86_64.sh


echo "[Desktop Entry]
Type=Application
Version=1.0
Name=Spyder
GenericName=Spyder
Comment=The Scientific Python Development Environment
Icon=${INSTALL_DIR}/share/icons/spyder3.png
TryExec=${INSTALL_DIR}/bin/spyder
Exec=${INSTALL_DIR}/bin/spyder
Terminal=false
MimeType=text/x-python;
Categories=Development;Science;IDE;Qt;
Keywords=Development;Science;IDE;Qt;
StartupNotify=true
StartupWMClass=Spyder" > ~/.local/share/applications/spyder.desktop

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "
${red}WARNING:
${reset}Launching spyder in a graphical way (from a desktop shortcut)
will not load ~/.barhrc variables e.g. PATH
If they are required in your app, you may:
1. Set them in your script before each run using os.environ or
2. Launch spyder from terminal with:

conda activate base && spyder
"
