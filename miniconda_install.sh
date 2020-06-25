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
