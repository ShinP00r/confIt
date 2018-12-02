#! /bin/bash

# i3 and appearance
APPS="\
i3 \
nm-applet \
gnome-sound-applet \
gnome-screensaver \
redshift"

# Utils
APPS="${APPS} \
vim \
zsh \
"

# Lang
APPS="${APPS} \
python \
python-pip \
ruby \
make \
cmake \
clang \
ruby"

# TOOLS
APPS="${APPS} git \
curl \
xrand \
tree \
feh \
shutter \
most \
volumeicon"

# Install APPS
# sudo apt update && sudo apt upgrade
# sudo apt install $APPS -y 


# Conf files
# CONFDIR="~/.config"
# if [ ! -d "$CONFDIR" ]; then
# 	mkdir "$CONFDIR"
# fi
# cp .vimrc .zshrc .fehbg ~ 
# cp i3/ $CONFDIR
# cp redshift.conf $CONFDIR
# sudo cp i3status.conf /etc/

# gtk theme
mkdir /tmp/confIT
cp themes/gtk/theme-obsidian-2-green.tar.gz /tmp/theme.tar.gz 
tar -xf /tmp/theme.tar.gz -C /tmp/confIT
sudo cp -r /tmp/theme/theme-obsidian-2-green/Obsidian-2-green /usr/share/themes


# clean
rm -rf /tmp/confIT