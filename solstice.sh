#!/bin/bash

wget -N https://www.meso-star.com/projects/solstice/downloads/Solstice-0.9.0-GNU-Linux64.tar.gz -P ~/Downloads

mkdir ~/Programs
tar -xzf ~/Downloads/Solstice-0.9.0-GNU-Linux64.tar.gz --skip-old-files --directory ~/Programs

echo source ~/Programs/Solstice-0.9.0-GNU-Linux64/etc/solstice.profile >> ~/.bashrc
