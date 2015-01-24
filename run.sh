#!/bin/bash
echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
apt -y install git
git clone https://github.com/drubuntu/installation $HOME/installation
cd $HOME/installation
bash install.sh 2>$HOME/errors.txt
rm -r "$HOME"/installation
