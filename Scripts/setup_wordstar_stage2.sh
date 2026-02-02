#!/bin/bash

if [ -f "WordTsar" ]; then
    mv WordTsar code
    sudo apt install dosbox-x libqt6printsupport6
else
    sudo apt install dosbox-x
fi

mkdir -p ~/.config/dosbox-x/
mv dosbox-x-2025.02.01.conf ~/.config/dosbox-x

