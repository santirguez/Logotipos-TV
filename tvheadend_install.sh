#!/bin/sh
sudo apt update
sudo apt -y upgrade
sudo apt -y install coreutils wget apt-transport-https lsb-release ca-certificates
sudo wget -qO- https://doozer.io/keys/tvheadend/tvheadend/pgp | sudo apt-key add -
sudo grep -qF "deb http://apt.tvheadend.org/stable raspbian-stretch main" "/etc/apt/sources.list.d/tvheadend.list" || echo "deb http://apt.tvheadend.org/stable raspbian-stretch main" | sudo tee -a /etc/apt/sources.list.d/tvheadend.list
sudo apt update
sudo apt -y install tvheadend
sudo dpkg-reconfigure tvheadend
sudo systemctl restart tvheadend
