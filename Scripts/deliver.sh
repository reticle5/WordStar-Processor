tar --no-mac-metadata cjf ws.tgz "WordStar 7.0 for DOS - Template"
scp dosbox-x-2025.02.01.conf refresh_wordstar.sh setup_megara.sh upgrade_all.sh WordTsar ws.tgz megara:.
rm ws.tgz
