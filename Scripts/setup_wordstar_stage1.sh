#!/bin/bash

mkdir bin
mkdir code
chmod u+x refresh_wordstar.sh upgrade_all.sh
mv refresh_wordstar.sh upgrade_all.sh bin

mv ws.tgz code
(cd code ; tar xjf ws.tgz)
~/bin/refresh_wordstar.sh
rm code/ws.tgz

# If you ran deliver.sh from a Mac, you might be sending over Apple junk files
# The commands below remove these junk files. They are safe to run even if you didn't run from a Mac

find . -name .DS_Store -exec rm "{}" \;
find . -name ._\* -exec rm "{}" \;

# Start a full upgrade of the OS. It's likely not very up-to-date.

bin/upgrade_all.sh
