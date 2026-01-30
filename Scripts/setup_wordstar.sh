#!/bin/bash

mkdir bin
mkdir code
chmod u+x disable_ipv6.sh refresh_wordstar.sh upgrade_all.sh
mv disable_ipv6.sh refresh_wordstar.sh upgrade_all.sh bin

mv ws.tgz code
(cd code ; tar xjf ws.tgz)
~/bin/refresh_wordstar.sh
rm ws.tgz

if [ -f "WordTsar" ]; then
    mv WordTsar code
    sudo apt install dosbox-x libqt6printsupport6
else
    sudo apt install dosbox-x
fi

mkdir -p ~/.config/dosbox-x/
mv dosbox-x-2025.02.01.conf ~/.config/dosbox-x

wget https://mega.nz/linux/repo/Debian_13/arm64/megacmd-Debian_13_arm64.deb && sudo apt install "$PWD/megacmd-Debian_13_arm64.deb"
mega-login
mega-sync ~/code/WSLIVE/DOCS /WordStar

# If you ran deliver.sh from a Mac, you might be sending over Apple junk files
# The commands below remove these junk files. They are safe to run even if you didn't run from a Mac

find . -name .DS_Store -exec rm "{}" \;
find . -name ._\* -exec rm "{}" \;
