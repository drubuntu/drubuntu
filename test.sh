#!/bin/bash
elementaryos(){
apt -y -qq install software-properties-common xorg lightdm >>/dev/null 2>&1
apt-add-repository -y ppa:gnome3 && >>/dev/null 2>&1
apt-add-repository -y ppa:gnome3-team/gnome3-staging && >>/dev/null 2>&1
apt-add-repository -y ppa:elementary/stable && >>/dev/null 2>&1
apt-add-repository -y ppa:elementary/os patches && >>/dev/null 2>&1
apt update && >>/dev/null 2>&1
apt-get -y --force-yes -qq install elementary-desktop >>/dev/null 2>&1
apt-get -y remove unity-greeter && >>/dev/null 2>&1
dpkg-reconfigure pantheon-greeter && >>/dev/null 2>&1
apt-get upgrade;apt-get dist-upgrade >>/dev/null 2>&1
}
elementaryos
