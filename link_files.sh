#!/bin/bash

echo "Setting up your dotfile links"

ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.ideavimrc ~/.ideavimrc

ln -s -f ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/dotfiles/fish/fish_plugins ~/.config/fish/fish_plugins

ln -s -f ~/dotfiles/.mackup.cfg ~/.mackup.cfg

