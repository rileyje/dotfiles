#!/bin/bash

SCRIPT=$(basename $0)
for file in ~/dotfiles/.??*; do 
	DOTFILE=$(basename $file)
	if [[ -f $file && $DOTFILE != $SCRIPT   ]]; then
		ln -nsf $file ~/
	fi
done

mkdir -p ~/.ssh
mkdir -p ~/.config/awesome
chmod 700 ~/.ssh ~/.config/awesome
ln -nsf ~/dotfiles/.ssh/config ~/.ssh/config
ln -nsf ~/dotfiles/.config/awesome/rc.lua ~/.config/awesome/rc.lua
