#!/bin/bash
if (( $EUID != 0 )); then
  echo 'This script only works when run as root!'
  exit
fi
dpkg --clear-selections
dpkg --set-selections < Ubuntu-20.04-dpkg_selections.txt

apt-get -y autoremove &> /dev/null
apt-get -y dselect-upgrade &> /dev/null
mv Ubuntu-20.04-fs_overlay.tar.bz2 /
export MOVEBACKTO=`pwd`
cd /
tar -xjf Ubuntu-20.04-fs_overlay.tar.bz2
systemctl enable nginx &> /dev/null
systemctl restart nginx &> /dev/null
mv /Ubuntu-20.04-fs_overlay.tar.bz2 "$MOVEBACKTO"
echo 'Install completed, check the README for next steps'
