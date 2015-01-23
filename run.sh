#!/bin/bash
echo "You'll install Drubuntu now! Enter your passwort  or hit CTRL+C to abbort installation"
sudo apt -y install git
cd ~
git clone https://github.com/drubuntu/installation .
cd installation
bash install.sh 2>$HOME/errors.txt
rm ~/installation
rm -- "0"
