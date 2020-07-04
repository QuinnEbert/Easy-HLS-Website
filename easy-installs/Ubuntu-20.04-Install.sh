#!/bin/bash
if (( $EUID != 0 )); then
  echo 'This script only works when run as root!'
  exit
fi
dpkg --clear-selections
dpkg --set-selections < Ubuntu-20.04-dpkg_selections.txt
chmod +x Ubuntu-20.04-InstallHelper.php
apt-get -y autoremove
apt-get -y dselect-upgrade
mv Ubuntu-20.04-fs_overlay.tar.bz2 /
export MOVEBACKTO=`pwd`
cd /
tar -xjf Ubuntu-20.04-fs_overlay.tar.bz2
systemctl enable nginx
systemctl restart nginx
mv /Ubuntu-20.04-fs_overlay.tar.bz2 "$MOVEBACKTO"
cd "$MOVEBACKTO"
./Ubuntu-20.04-InstallHelper.php
echo 'Install completed, check the README for next steps'
