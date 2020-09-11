#!/usr/bin/env bash

# install homebrew the first time
if test ! $(which brew); then
    if test "$(uname)" = "Darwin"; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
fi

exit 0

# make sure we’re using the latest Homebrew
brew update

# upgrade any already-installed formulae
brew upgrade

# install GNU core utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install bash
brew install bash-completion2

# install the only true shell
brew install fish
chsh -s "(which fish)"

# install `wget` with IRI support
brew install wget --with-iri

# install more recent versions of some macOS tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# install other useful binaries
brew install gcc
brew install git
brew install git-lfs
brew install lua
brew install node
brew install pipx
brew install ranger
brew install rename
brew install ripgrep
brew install rsync
brew install speedtest
brew install tldr
brew install tree

# MacOS casks
brew cask install google-chrome
brew cask install firefox
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install spotify
brew cask install vlc

# remove outdated versions
brew cleanup