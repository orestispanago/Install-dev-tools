#!/bin/bash

INSTALL_DIR=~/Programs

wget -N --content-disposition "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.8&type=binary&os=Linux&downloadFile=ParaView-5.8.1-MPI-Linux-Python3.7-64bit.tar.gz"

mkdir $INSTALL_DIR

tar -xzf ParaView-5.8.1-MPI-Linux-Python3.7-64bit.tar.gz --skip-old-files --directory $INSTALL_DIR

echo "alias paraview=${INSTALL_DIR}/ParaView-5.8.1-MPI-Linux-Python3.7-64bit/bin/paraview" >> ~/.bashrc

rm ParaView-5.8.1-MPI-Linux-Python3.7-64bit.tar.gz

echo "[Desktop Entry]
Encoding=UTF-8
Name=ParaView
Comment=Parallel visualization application
Exec=${INSTALL_DIR}/ParaView-5.8.1-MPI-Linux-Python3.7-64bit/bin/paraview
Icon=${INSTALL_DIR}/ParaView-5.8.1-MPI-Linux-Python3.7-64bit/share/icons/hicolor/96x96/apps/paraview.png
Version=1.0
Type=Application
Terminal=0" > ~/.local/share/applications/paraview.desktop
