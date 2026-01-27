mkdir bin
mkdir code
chmod u+x upgrade_all.sh
mv refresh_wordstar.sh upgrade_all.sh bin
mv WordTsar code
mv ws.tgz code
(cd code ; tar xvjf ws.tgz)
rm ws.tgz

find . -name .DS_Store -exec rm "{}" \;
find . -name ._\* -exec rm "{}" \;

sudo apt install dosbox-x libqt6printsupport6
