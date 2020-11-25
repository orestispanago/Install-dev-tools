#!/bin/bash

INSTALL_DIR=~/Programs

wget -N https://www.meso-star.com/projects/solstice/downloads/Solstice-0.9.0-GNU-Linux64.tar.gz

mkdir $INSTALL_DIR
tar -xzf Solstice-0.9.0-GNU-Linux64.tar.gz --skip-old-files --directory $INSTALL_DIR

echo source $INSTALL_DIR/Solstice-0.9.0-GNU-Linux64/etc/solstice.profile >> ~/.bashrc

rm -rf Solstice-0.9.0-GNU-Linux64.tar.gz
