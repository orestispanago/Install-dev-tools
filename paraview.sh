#!/bin/bash
wget -N --content-disposition "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.8&type=binary&os=Linux&downloadFile=ParaView-5.8.1-MPI-Linux-Python3.7-64bit.tar.gz" -P ~/Downloads

mkdir ~/Programs

tar -xzf ~/Downloads/ParaView-5.8.1-MPI-Linux-Python3.7-64bit.tar.gz --skip-old-files --directory ~/Programs

echo 'alias paraview="~/Programs/ParaView-5.8.1-MPI-Linux-Python3.7-64bit/bin/paraview"' >> ~/.bashrc

cp paraview.desktop ~/.local/share/applications/
