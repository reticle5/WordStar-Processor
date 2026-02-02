#!/bin/bash

echo -n "Enter account name -> "
read account
echo -n "Enter password     -> "
read password

#wget https://mega.nz/linux/repo/Debian_13/arm64/megacmd-Debian_13_arm64.deb && sudo apt install "$PWD/megacmd-Debian_13_arm64.deb"
echo mega-login "$account" "$password"
echo mega-sync ~/code/WSLIVE/DOCS /WordStar
echo rm "$PWD/megacmd-Debian_13_arm64.deb"

