#!/bin/bash
echo "You are about to installing Drubuntu to your Systm enter your passwort to continue or hit CTRL+C to abbort installation"
apt -y install git
cd ~
git clone https://github.com/drubuntu/installation .
cd installation
bash install.sh 2>$HOME/errors.txt
rm ~/installation
rm -- "0"
