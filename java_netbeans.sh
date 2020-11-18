#!/bin/bash

# Install jdk if not present on system
sudo apt-get install -y openjdk-8-jdk

# Run netbeans installer only if it does not work from home folder restore
wget http://download.netbeans.org/netbeans/8.2/rc/bundles/netbeans-8.2-javaee-linux.sh
sudo sh netbeans-8.2-javaee-linux.sh

