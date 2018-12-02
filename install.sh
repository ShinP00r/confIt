#! /bin/bash

# i3 and appearance
APPS="\
i3 \
nm-applet \
gnome-sound-applet \
gnome-screensaver \
redshift \
fonts-powerline"

# Utils
APPS="${APPS} \
vim \
zsh"

# Lang
APPS="${APPS} \
make \
cmake \
clang \
python \
python-pip \
ruby \
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
sudo apt update && sudo apt upgrade
sudo apt install "$APPS" -y 

## ZSH 
# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

# Conf files
CONFDIR="~/.config"
if [ ! -d "$CONFDIR" ]; then
	mkdir "$CONFDIR"
fi

if [ ! -d "$CONFDIR/confIt" ]; then
	mkdir "$CONFDIR/confIt"
fi

cp zsh_alliases zsh_functions "$CONFDIR/confIt"
cp .vimrc .zshrc ~ 
cp "i3/ $CONFDIR"
cp redshift.conf "$CONFDIR/confIt"
sudo cp i3status.conf /etc/

# bg 
cp .fehbg wp.jpg ~

# gtk theme
mkdir /tmp/confIT
cp themes/gtk/theme-obsidian-2-green.tar.gz /tmp/theme.tar.gz 
tar -xf /tmp/theme.tar.gz -C /tmp/confIT
sudo cp -r /tmp/theme/theme-obsidian-2-green/Obsidian-2-green /usr/share/themes

# clean
rm -rf /tmp/confIT

echo "you should change gpk theme: lxappearance
and launch zsh."