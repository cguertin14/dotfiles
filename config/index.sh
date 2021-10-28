#!/bin/sh

# Current directory.
DIR="$( cd "$( dirname "$0" )" && pwd )"

# Create directories
mkdir -p ~/.config/kitty
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks

# Install config files.
cp $DIR/i3.config ~/.config/i3/config
cp $DIR/dunst.config ~/.config/i3/dunst_config
cp $DIR/i3blocks.config ~/.config/i3blocks/config
cp $DIR/.zshrc ~/.zshrc
cp $DIR/vscode_settings.json ~/.config/Code/User/settings.json
cp $DIR/kitty.conf ~/.config/kitty/kitty.conf
cp $DIR/starship.toml ~/.config/startship.toml
sudo cp $DIR/logind.conf /etc/systemd/logind.conf

# Graphics configuration file
sudo cp $DIR/graphics.config /etc/X11/xorg.conf.d/20-intel.conf
sudo cp $DIR/graphics.config /usr/share/X11/xorg.conf.d/20-intel.conf

# Kitty themes
git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
# Set Batman theme as default kitty theme
ln -s ~/.config/kitty/kitty-themes/themes/Batman.conf ~/.config/kitty/theme.conf
