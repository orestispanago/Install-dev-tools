#!/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# -b: Silent install -p: path
bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/orestis/.miniconda3

eval "$(/home/orestis/.miniconda3/bin/conda shell.bash hook)"
conda init
# source ~/.bashrc

conda install spyder -y
conda install jupyter -y

pip install pandas
pip install matplotlib
pip install seaborn

conda config --set auto_activate_base false

rm Miniconda3-latest-Linux-x86_64.sh

cp spyder.desktop ~/.local/share/applications/

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}WARNING: ${reset}Launching spyder in a graphical way (from a desktop shortcut)"
echo " will not load ~/.barhrc variables e.g. PATH"
echo
echo "If they are required in your app, you may:"
echo "1. set them at each run using os.environ, or"
echo "2. Launch spyder from terminal using "
echo
echo "conda activate base && spyder"
echo
