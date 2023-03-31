#!/bin/bash

DIR="$HOME/tokyo-dots"
FDIR="$HOME/.local/share/fonts"

install_fonts() {
	echo -e "\n[*] Installing fonts..."
	[[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
	cp -rf $DIR/fonts/* "$FDIR"
}

install_dots() {
    echo -e "\n[*] Installing dots..."
    cp -rf $DIR/config/* "$HOME/.config/"
    chmod +x -R $HOME/.config/polybar/
    mkdir $HOME/.themes/
    cp -rf $DIR/themes/* "$HOME/.themes/"
    mkdir $HOME/.vscode/
    cp -rf $DIR/vscode/* "$HOME/.vscode/"
    cp -rf $HOME/Wallpapers/ $HOME/
}

install_fonts

install_dots

echo "Complete"