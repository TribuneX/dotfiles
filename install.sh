#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
fi

echo "Install all our dependencies with bundle (See Brewfile)"
brew tap homebrew/bundle
brew bundle install


antibody bundle < ~/dotfiles/zsh/.plugins.txt > ~/dotfiles/zsh/.plugins.sh

source repos.sh

source link_files.sh
source .macos
